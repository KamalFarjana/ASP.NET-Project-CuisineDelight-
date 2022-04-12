using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class SearchCatererItemShow : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string UserId = Request.QueryString["IDCAT"];
                SearchCatererItemList.DataSource = DataAccess.SelectQuery("select * from Items where UserId='"+ UserId+"'");
                SearchCatererItemList.DataBind();
            }
        }
    }
}