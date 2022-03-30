using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Claims;
using System.Web.Providers.Entities;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_CuisineDelight.Customer
{
    public partial class UserProfileForm : System.Web.UI.UserControl
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = Membership.GetUser().UserName;
            string Username = Session["UserName"].ToString();

            Console.WriteLine(Username);
            if (!IsPostBack)
            {
                UserProfileView.DataSource = DataAccess.SelectQuery("SELECT u.FirstName, u.LastName, m.Email, u.MobileNumber from UserDetails as u INNER JOIN Memberships as m ON  u.UserId = m.UserId where u.UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')");
                UserProfileView.DataBind();
            }
        }

        protected void UserProfileView_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
        protected void Update(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MembershipUser Newuser = Membership.GetUser();
                Guid newuserid = (Guid)Newuser.ProviderUserKey;
                TextBox firstname = (TextBox)UserProfileView.FindControl("FirstName");
                TextBox lastname = (TextBox)UserProfileView.FindControl("LastName");
                TextBox mobileNo = (TextBox)UserProfileView.FindControl("MobileNumber");
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {
                    SqlCommand mycommand = new SqlCommand("EditUserInfo", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                    mycommand.Parameters.Add("@firstname", SqlDbType.VarChar).Value = firstname.Text;
                    mycommand.Parameters.Add("@Lastname", SqlDbType.VarChar).Value = lastname.Text;
                    mycommand.Parameters.Add("@userId", SqlDbType.UniqueIdentifier).Value = newuserid;
                    mycommand.Parameters.Add("@Mobileno", SqlDbType.VarChar).Value = mobileNo.Text;
                    myconnection.Open();
                    mycommand.ExecuteNonQuery();
                    myconnection.Close();
                }
            
            }
            
           
        }
        protected void Cancel(object sender, EventArgs e)
        {

            Response.Redirect("~/Customer/UserProfile", false);
        }
    }
}