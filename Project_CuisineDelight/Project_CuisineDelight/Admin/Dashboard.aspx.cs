using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Project_CuisineDelight.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn;
            SqlCommand cmd1;
            SqlCommand cmd2;
            SqlCommand cmd3;
            SqlCommand cmd4;
            SqlCommand cmd5;
            SqlCommand cmd6;

            string sql1 = "SELECT COUNT(*) FROM Orders";
            string sql2 = "SELECT COUNT(*) FROM Orders WHERE Order_Status='Pending'";
            string sql3 = "SELECT COUNT(*) FROM Orders WHERE Order_Status='Confirmed'";
            string sql4 = "SELECT COUNT(*) FROM Orders WHERE Order_Status='Preparing'";
            string sql5 = "SELECT COUNT(*) FROM Orders WHERE Order_Status='Cancelled'";
            string sql6 = "SELECT COUNT(*) FROM UserDetails WHERE UserType=1";

            cnn = new SqlConnection(connectionString);
            try
            {
                cnn.Open();
                cmd1 = new SqlCommand(sql1, cnn);
                Int32 count1 = Convert.ToInt32(cmd1.ExecuteScalar());
                cmd1.Dispose();

                cmd2 = new SqlCommand(sql2, cnn);
                Int32 count2 = Convert.ToInt32(cmd2.ExecuteScalar());
                cmd2.Dispose();

                cmd3 = new SqlCommand(sql3, cnn);
                Int32 count3 = Convert.ToInt32(cmd3.ExecuteScalar());
                cmd3.Dispose();

                cmd4 = new SqlCommand(sql4, cnn);
                Int32 count4 = Convert.ToInt32(cmd4.ExecuteScalar());
                cmd4.Dispose();

                cmd5 = new SqlCommand(sql5, cnn);
                Int32 count5 = Convert.ToInt32(cmd5.ExecuteScalar());
                cmd5.Dispose();

                cmd6 = new SqlCommand(sql6, cnn);
                Int32 count6 = Convert.ToInt32(cmd6.ExecuteScalar());
                cmd6.Dispose();

                cnn.Close();
                Label1.Text = count1.ToString();
                Label2.Text = count2.ToString();
                Label3.Text = count3.ToString();
                Label4.Text = count4.ToString();
                Label5.Text = count5.ToString();
                Label6.Text = count6.ToString();
            }
            catch (Exception er)
            {

            }

        }
    }
}