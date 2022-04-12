using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight.Master
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton2.Visible = false;    //admin dashboard
                    LinkButton3.Visible = false;    //admin report
                    LinkButton4.Visible = false;    //admin manage caterer
                }
                else if ((string)Session["role"] == "admin")
                {
                    LinkButton1.Visible = false;    //admin login
                    LinkButton2.Visible = true;    //admin dashboard
                    LinkButton3.Visible = true;    //admin report
                    LinkButton4.Visible = true;    //admin manage caterer

                    LinkButton5.Visible = false;    //admin dashboard
                    LinkButton6.Visible = false;    //admin report
                    LinkButton7.Visible = false;    //admin manage caterer
                    LinkButton8.Visible = false;    //admin dashboard
                    LinkButton9.Visible = false;    //admin report
                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            TextBox searching = (TextBox)form1.FindControl("SearchingFood");
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
    }
}