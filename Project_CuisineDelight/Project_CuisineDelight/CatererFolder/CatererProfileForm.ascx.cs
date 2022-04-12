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


namespace Project_CuisineDelight.CatererFolder
{
    public partial class CatererProfileForm : System.Web.UI.UserControl
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = Membership.GetUser().UserName;
            string Username = Session["UserName"].ToString();
            if (!IsPostBack)
            {
                CatererProfileView.DataSource = DataAccess.SelectQuery("SELECT u.Description, m.Email, UD.MobileNumber from CatererDetails as u INNER JOIN Memberships as m ON  u.UserId = m.UserId inner join UserDetails as UD on UD.UserId = m.UserId where u.UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')");
                CatererProfileView.DataBind();
            }
        }
        protected void Update(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MembershipUser Newuser = Membership.GetUser();
                Guid newuserid = (Guid)Newuser.ProviderUserKey;
                TextBox description = (TextBox)CatererProfileView.FindControl("Desciption");
                TextBox mobileNo = (TextBox)CatererProfileView.FindControl("MobileNumber");
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {
                    SqlCommand mycommand = new SqlCommand("EditCatererInfo", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                    mycommand.Parameters.Add("@Description", SqlDbType.VarChar).Value = description.Text;              
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

            Response.Redirect("~/CatererFolder/CatererProfile", false);
        }
    }
}