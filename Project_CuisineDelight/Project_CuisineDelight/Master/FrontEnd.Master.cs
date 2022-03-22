using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class FrontEnd : System.Web.UI.MasterPage
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
   

    }
}