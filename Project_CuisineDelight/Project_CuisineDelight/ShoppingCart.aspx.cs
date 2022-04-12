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
using System.IO;

namespace Project_CuisineDelight
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        CartI myCart;
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["myCart"] == null)

            {
                Session["myCart"] = new CartI();
            }
            myCart = (CartI)Session["myCart"];
            if (!IsPostBack)

            {
                FillDate();
            }
        }
        private void FillDate()

        {
            GridView gvShoppingCart = (GridView)LoginView1.FindControl("gvShoppingCart");
            Label lblGrandTotal = (Label)LoginView1.FindControl("lblGrandTotal");

            gvShoppingCart.DataSource = myCart.Items;

            gvShoppingCart.DataBind();

            if (myCart.Items.Count == 0)

            {
                lblGrandTotal.Visible = false;
            }
            else

            {
                lblGrandTotal.Visible = true;
                lblGrandTotal.Text = String.Format("Grand Total={0,19:C2}", myCart.GrandTotal);
            }


        }
        protected void gvShoppingCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)

        {
            GridView gvShoppingCart = (GridView)LoginView1.FindControl("gvShoppingCart");
            gvShoppingCart.EditIndex = -1;

            FillDate();
        }

        protected void gvShoppingCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myCart.Delete(e.RowIndex);

            FillDate();
        }

        protected void gvShoppingCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridView gvShoppingCart = (GridView)LoginView1.FindControl("gvShoppingCart");
            TextBox txtQuantity = (TextBox)gvShoppingCart.Rows[e.RowIndex].Cells[2].Controls[0];

            int quantity = Int32.Parse(txtQuantity.Text);

            myCart.Update(e.RowIndex, quantity);

            gvShoppingCart.EditIndex = -1;

            FillDate();
        }

        protected void gvShoppingCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView gvShoppingCart = (GridView)LoginView1.FindControl("gvShoppingCart");
            gvShoppingCart.EditIndex = e.NewEditIndex;

            FillDate();
        }
        protected void PlaceOrder(object sender, EventArgs e)
        {
            MembershipUser Newuser = Membership.GetUser();
            Guid newuserid = (Guid)Newuser.ProviderUserKey;
            GridView gvShoppingCart = (GridView)LoginView1.FindControl("gvShoppingCart");
            string time = "";

            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                time = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                SqlCommand mycommand = new SqlCommand("Placing_Orders", myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;
                mycommand.Parameters.Add("@UserId", SqlDbType.UniqueIdentifier).Value = newuserid;
                mycommand.Parameters.Add("@OrderPlacedDate", SqlDbType.VarChar).Value = time;

                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();
            }
            foreach (GridViewRow row in gvShoppingCart.Rows)
            {

                string storedprocedurename;
                int price = Convert.ToInt32(myCart.ItemORPackagePrice(row.RowIndex));
                int qty = myCart.ItemORPackageQty(row.RowIndex);
                int item_packageid = myCart.ItemorPackageID(row.RowIndex);
                int type = myCart.ItemORPackage(row.RowIndex);
                int total = price * qty;
                if (type == 1) { storedprocedurename = "addingitemtoorder"; }
                else { storedprocedurename = "addingpackagetoorder"; }
                Session["UserName"] = Membership.GetUser().UserName;
                string Username = Session["UserName"].ToString();
                int orderID = OrderIDFetching(Username, time);
                OrderIsinsertedtoTables(storedprocedurename, item_packageid, price, qty, total, type, orderID);
            }
            Label msg = (Label)LoginView1.FindControl("SuccessMsg");
            msg.Text = "You order has been place.";
            msg.Visible = true;
            myCart = new CartI();
            Session["myCart"] = myCart;
            Response.Redirect("~/Customer/MyOrders.aspx");
        }
        protected void OrderIsinsertedtoTables(string name, int Item_PackageID, int price, int qty, int total, int type, int orderID)
        {
            using (SqlConnection myconnection = new SqlConnection(connectionString))
            {
                SqlCommand mycommand = new SqlCommand(name, myconnection);
                mycommand.CommandType = CommandType.StoredProcedure;
                mycommand.Parameters.Add("@OrderID", SqlDbType.Int).Value = orderID;
                if (type == 1) { mycommand.Parameters.Add("@Item_ID", SqlDbType.Int).Value = Item_PackageID; }
                else { mycommand.Parameters.Add("@Package_ID", SqlDbType.Int).Value = Item_PackageID; }
                mycommand.Parameters.Add("@Amount", SqlDbType.Int).Value = price;
                mycommand.Parameters.Add("@NoofServings", SqlDbType.Int).Value = qty;
                mycommand.Parameters.Add("@TotalAmount", SqlDbType.Int).Value = total;
                myconnection.Open();
                mycommand.ExecuteNonQuery();
                myconnection.Close();
            }
        }
        protected int OrderIDFetching(string Username, string time)
        {
            int id = 0;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand com = new SqlCommand("Select * from Orders where OrderPlacedDate='" + time + "' and  UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset 
            id = int.Parse(ds.Tables[0].Rows[0]["OrderID"].ToString());
            return id;
        }
    }
}