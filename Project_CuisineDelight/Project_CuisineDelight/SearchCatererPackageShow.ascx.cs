using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class SearchCatererPackageShow : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string UserId = Request.QueryString["IDCAT"];
                SearchCaterePackages.DataSource = DataAccess.SelectQuery("select * from Packages where UserId='" + UserId + "'");
                SearchCaterePackages.DataBind();
            }
        }
    }
}