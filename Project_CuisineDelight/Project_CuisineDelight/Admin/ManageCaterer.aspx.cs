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
    public partial class ManageCaterer : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            if (!IsPostBack)

                //GridView1.DataSource = DataAccess.SelectQuery("SELECT [UserId], [Email], [IsApproved], [CreateDate] FROM [Memberships] ORDER BY [CreateDate] DESC");
                GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                SqlCommand mycommand = new SqlCommand("ApproveCaterer", myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;
                mycommand.Parameters.Add("@UserID", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[1].Text;
                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();
                Label1.Text = "Caterer account is now approved.";
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                SqlCommand mycommand = new SqlCommand("DisableCaterer", myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;
                mycommand.Parameters.Add("@UserID", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[1].Text;
                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();
                Label1.Text = "Caterer account is now disabled.";
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                int x = 0, y = 0;
                SqlCommand mycommand = new SqlCommand("DeleteCaterer", myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;
                mycommand.Parameters.Add("@UserID", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[1].Text;
                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();
                Label1.Text = "Caterer account is now deleted.";
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedRow.BackColor = System.Drawing.Color.Brown;
            Label1.Text = "";
        }
    }
}