using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class SearchCatererItemShow : System.Web.UI.UserControl
    {
        CartI myCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string UserId = Request.QueryString["IDCAT"];
                SearchCatererItemList.DataSource = DataAccess.SelectQuery("select * from Items where UserId='" + UserId + "'");
                SearchCatererItemList.DataBind();
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
           
            if (Session["myCart"] == null)

            {
                myCart = new CartI();
                Session["myCart"] = myCart;
                Session["CatererId"] = Request.QueryString["IDCAT"];
            }
            if (Request.QueryString["IDCAT"] == Session["CatererId"].ToString())
            {
                Button btn = sender as Button;
                string id = btn.CommandArgument.ToString();
                myCart = (CartI)Session["myCart"];
                DataTable dt = DataAccess.SelectQuery("SELECT * FROM Items WHERE Item_ID=" + id);
                DataRow row = dt.Rows[0];
                myCart.Insert(new CartItem(Int32.Parse(id),
                  row["Item_Name"].ToString(),
                  row["Item_Desc"].ToString(),
                  Double.Parse(row["Item_Price"].ToString()),
                  1,1)

                  );
            }
            else
            {
                myCart = new CartI();
                Session["myCart"] = myCart;
                Button btn = sender as Button;
                string id = btn.CommandArgument.ToString();
                myCart = (CartI)Session["myCart"];
                DataTable dt = DataAccess.SelectQuery("SELECT * FROM Items WHERE Item_ID=" + id);
                DataRow row = dt.Rows[0];
                myCart.Insert(new CartItem(Int32.Parse(id),
                  row["Item_Name"].ToString(),
                  row["Item_Desc"].ToString(),
                  Double.Parse(row["Item_Price"].ToString()),
                  1,1)

                  );
            }
        }
    

    }
}