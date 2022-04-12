using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Project_CuisineDelight
{
    public partial class FrontEnd : System.Web.UI.MasterPage
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton16.Visible = false; //home
                    LinkButton10.Visible = false;   //menu
                    LinkButton13.Visible = false;    //my orders
                    LinkButton14.Visible = false;    //orders
                }
                else if ((string)Session["role"] == "admin")
                {
                    LinkButton10.Visible = false;   //menu
                    LinkButton13.Visible = false;    //my orders
                    LinkButton14.Visible = false;    //orders

                    LinkButton1.Visible = false;   //admin login
                    LinkButton2.Visible = true;    //admin dashboard
                    LinkButton3.Visible = true;    //admin report
                    LinkButton4.Visible = true;    //admin manage caterer
                }
                else if ((string)Session["role"] == "customer")
                {
                    LinkButton16.Visible = false;   //caterer homepage
                    LinkButton10.Visible = false;   //menu
                    LinkButton14.Visible = false;    //orders
                    LinkButton15.Visible = true;    //shopping cart
                    LinkButton18.Visible = true;    //customer profile


                    LinkButton1.Visible = false;    //admin login
                    LinkButton2.Visible = false;    //admin dashboard
                    LinkButton3.Visible = false;    //admin report
                    LinkButton4.Visible = false;    //admin manage caterer
                }
                else if ((string)Session["role"] == "caterer")
                {
                    LinkButton5.Visible = false;   //customer homepage
                    LinkButton8.Visible = false;   //caterer list
                    LinkButton9.Visible = false;   //food
                    LinkButton13.Visible = false;    //orders
                    LinkButton17.Visible = true;    //caterer profile

                    LinkButton1.Visible = false;     //admin login
                    LinkButton2.Visible = false;    //admin dashboard
                    LinkButton3.Visible = false;    //admin report
                    LinkButton4.Visible = false;    //admin manage caterer

                    SearchingFood.Visible = false;  //search textbox
                    Button1.Visible = false;        //search button
                }
                
            }
            catch (Exception ex)
            {

            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            TextBox searching= (TextBox)form1.FindControl("SearchingFood");
            string result = "~/SearchResults.aspx?result=" + searching.Text;
            Response.Redirect(result);
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Dashboard.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Report.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ManageCaterer.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/About.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FAQ.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Caterer.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Food.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CatererFolder/CatererMenu.aspx");
        }
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShoppingCart.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/UserProfile.aspx");
        }
        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/MyOrders.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CatererFolder/Orders.aspx");
        }
        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShoppingCart.aspx");
        }
        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CatererFolder/CatererHomePage.aspx");
        }
        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CatererFolder/CatererProfile.aspx");
        }
        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/UserProfile.aspx");
        }
    }
}