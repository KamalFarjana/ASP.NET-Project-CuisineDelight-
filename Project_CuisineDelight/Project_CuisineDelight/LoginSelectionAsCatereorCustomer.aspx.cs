using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class LoginSelectionAsCatereorCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (AsCustomerOrCaterer.SelectedValue == "")
            {
                ErrorMsg.Text = "Please select one of the above options!!";
            }
            else
            {
                string value = AsCustomerOrCaterer.SelectedItem.Value.ToString();
                if (value == "1")
                    Response.Redirect("~/Login.aspx");
                else
                    Response.Redirect("~/CatererLogin.aspx");
            }




        }
    }
}