using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight.CatererFolder
{
    public partial class ListItemOfCaterer : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                Session["UserName"] = Membership.GetUser().UserName;
                string Username = Session["UserName"].ToString();
                DataListItem.DataSource = DataAccess.SelectQuery("Select * from Items where UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')");
                DataListItem.DataBind();
            }
        }

    }
}