using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class SignupCaterer : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            MembershipUser Newuser = Membership.GetUser(CreateUserWizard1.UserName);
            Guid newuserid = (Guid)Newuser.ProviderUserKey;
            TextBox mobileNo = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("MobileNumber");
            TextBox desciption = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("CateringDesciption");
            String Customer = "2";
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                SqlCommand mycommand = new SqlCommand("NEW_USER_AS_Caterer", myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;               
                mycommand.Parameters.Add("@UserType", SqlDbType.VarChar).Value = Customer;
                mycommand.Parameters.Add("@userId", SqlDbType.UniqueIdentifier).Value = newuserid;
                mycommand.Parameters.Add("@Mobileno", SqlDbType.VarChar).Value = mobileNo.Text;
                mycommand.Parameters.Add("@description", SqlDbType.VarChar).Value = desciption.Text;
                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();

            }
        }
    }
}