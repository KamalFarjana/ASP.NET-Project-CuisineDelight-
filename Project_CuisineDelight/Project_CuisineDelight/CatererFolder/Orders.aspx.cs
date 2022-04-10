using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Project_CuisineDelight.CatererFolder
{
    public partial class Orders : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            if (!IsPostBack)

            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection(connectionString);
            SqlCommand mycommand = new SqlCommand("ChangeOrderStatus", myconnection);

            string sel = DropDownList1.SelectedValue.ToString();
            string OnDateStatus = "Preparing";

            DateTime todaydate = DateTime.Today;
            string rtdate = GridView1.SelectedRow.Cells[2].Text;
            DateTime orderdate = DateTime.Parse(rtdate);
            int result = DateTime.Compare(todaydate, orderdate);

            //Label1.Text = sel + todaydate + orderdate + a;

            if (sel == OnDateStatus)
            {
                if (result == 0)
                {
                    using (SqlConnection mycon = new SqlConnection(connectionString))
                    {
                        SqlCommand mycom = new SqlCommand("ChangeOrderStatus", mycon);
                        mycom.CommandType = CommandType.StoredProcedure;
                        mycom.Parameters.Add("@OrderID", SqlDbType.Int).Value = GridView1.SelectedRow.Cells[1].Text;
                        mycom.Parameters.Add("@Status", SqlDbType.VarChar).Value = sel;
                        mycon.Open();
                        mycom.ExecuteNonQuery();
                        mycon.Close();
                        Label1.Text = "Order status changed to " + sel + ".";
                        GridView1.DataBind();
                        GridView2.DataBind();
                    }
                }

                else
                {
                    Label1.Text = "You can only change order status to preparing only on the fulfillment date";
                }
            }
            else
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand com = new SqlCommand("ChangeOrderStatus", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.Add("@OrderID", SqlDbType.Int).Value = GridView1.SelectedRow.Cells[1].Text;
                    com.Parameters.Add("@Status", SqlDbType.VarChar).Value = sel;
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Order status changed to " + sel + ".";
                    GridView1.DataBind();
                    GridView2.DataBind();
                }
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //GridView1.SelectedRow.BackColor = System.Drawing.Color.Brown;
            Label1.Text = "";
        }
    }
}