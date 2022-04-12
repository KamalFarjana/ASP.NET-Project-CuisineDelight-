using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class SearchCatererPackageShow : System.Web.UI.UserControl
    {
        CartI myCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string UserId = Request.QueryString["IDCAT"];
                SearchCaterePackages.DataSource = DataAccess.SelectQuery("select * from Packages where UserId='" + UserId + "'");
                SearchCaterePackages.DataBind();
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
                DataTable dt = DataAccess.SelectQuery("SELECT * FROM Packages WHERE Package_ID=" + id);
                DataRow row = dt.Rows[0];
                myCart.Insert(new CartItem(Int32.Parse(id),
                  row["Package_Name"].ToString(),
                  row["Package_Desc"].ToString(),
                  Double.Parse(row["Package_Price"].ToString()),
                  1, 2)

                  );
            }
            if (Request.QueryString["IDCAT"] != Session["CatererId"].ToString())
            {
                myCart = new CartI();
                Session["myCart"] = myCart;
                Button btn = sender as Button;
                string id = btn.CommandArgument.ToString();
                myCart = (CartI)Session["myCart"];
                DataTable dt = DataAccess.SelectQuery("SELECT * FROM Packages WHERE Package_ID=" + id);
                DataRow row = dt.Rows[0];
                myCart.Insert(new CartItem(Int32.Parse(id),
                  row["Package_Name"].ToString(),
                  row["Package_Desc"].ToString(),
                  Double.Parse(row["Package_Price"].ToString()),
                  1, 2)

                  );
            }


        }
    }
}