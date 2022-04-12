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

namespace Project_CuisineDelight.Customer
{
    public partial class MyOrders : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = Membership.GetUser().UserName;
            string username = Session["UserName"].ToString();
            if (!IsPostBack)
            {
                GridView2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection(connectionString);

            string Ostatus = GridView2.SelectedRow.Cells[3].Text;

            if (Ostatus == "Approved" || Ostatus == "Pending")
            {
                using (SqlConnection mycon = new SqlConnection(connectionString))
                {
                    SqlCommand mycom = new SqlCommand("CustomerCancelOrder", mycon);
                    mycom.CommandType = CommandType.StoredProcedure;
                    mycom.Parameters.Add("@OrderID", SqlDbType.Int).Value = GridView2.SelectedRow.Cells[1].Text;
                    mycom.Parameters.Add("@Status", SqlDbType.VarChar).Value = "Cancelled";
                    mycon.Open();
                    mycom.ExecuteNonQuery();
                    mycon.Close();
                    Label1.Text = "Your ordr has been cancelled";
                    GridView2.DataBind();
                }
            }
            else
            {
                Label1.Text = "You can't cancel this order. Please check the order status.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection myconnection = new SqlConnection(connectionString);

            DateTime timeselected = Calendar1.SelectedDate;

            using (SqlConnection mycon = new SqlConnection(connectionString))
            {
                SqlCommand mycom = new SqlCommand("UpdateFulfilmentDate", mycon);
                mycom.CommandType = CommandType.StoredProcedure;
                mycom.Parameters.Add("@OrderID", SqlDbType.Int).Value = GridView2.SelectedRow.Cells[1].Text;
                mycom.Parameters.Add("@Date", SqlDbType.DateTime).Value = timeselected;
                mycon.Open();
                mycom.ExecuteNonQuery();
                mycon.Close();
                Label1.Text = "Fulfilment date has been updated.";
                GridView2.DataBind();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "";
        }
    }
}