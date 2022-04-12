using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_CuisineDelight
{
    public partial class Contact : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection(connectionString);
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string message = TextBox3.Text;

            using (SqlConnection mycon = new SqlConnection(connectionString))
            {
                SqlCommand mycom = new SqlCommand("SubmitQuery", mycon);
                mycom.CommandType = CommandType.StoredProcedure;
                mycom.Parameters.Add("@Name", SqlDbType.VarChar).Value = name;
                mycom.Parameters.Add("@Email", SqlDbType.VarChar).Value = email;
                mycom.Parameters.Add("@Message", SqlDbType.VarChar).Value = message;
                mycon.Open();
                mycom.ExecuteNonQuery();
                mycon.Close();
                Label1.Text = "Thank you for contacting us. We'll get back to you very soon.";
            }
        }
    }
}