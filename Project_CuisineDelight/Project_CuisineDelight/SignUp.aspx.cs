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
    public partial class SignUp : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            MembershipUser Newuser = Membership.GetUser(CreateUserWizard1.UserName);
            Guid newuserid = (Guid)Newuser.ProviderUserKey;
            TextBox firstname = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("FirstName");
            TextBox lastname = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("LastName");
            TextBox email = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("Email");
            String Customer = "1";
            using (SqlConnection myconnection=new SqlConnection(connectionString))
            {
                SqlCommand mycommand = new SqlCommand("NEW_USER", myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;
                mycommand.Parameters.Add("@firstname",SqlDbType.VarChar).Value=firstname.Text;
                mycommand.Parameters.Add("@Lastname", SqlDbType.VarChar).Value = lastname.Text;
                mycommand.Parameters.Add("@UserType", SqlDbType.VarChar).Value = Customer;
                mycommand.Parameters.Add("@userId", SqlDbType.UniqueIdentifier).Value = newuserid;
                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();

            }

        }
    }
}