using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName == "admin" && Login1.Password == "admin")
            {
                e.Authenticated = true;
                Session["role"] = "admin";
                //Response.Redirect("Dashboard.aspx");
            }
            else
            {
                e.Authenticated = false;
            }            
        }
    }
}