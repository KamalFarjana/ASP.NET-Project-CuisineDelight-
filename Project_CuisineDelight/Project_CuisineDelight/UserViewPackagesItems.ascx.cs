using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class UserViewPackagesItems : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string User_Id = Request.QueryString["IDCAT"];
                string PackageId = Request.QueryString["IDPakcageCAT"];
                SearchCatererItemList.DataSource = DataAccess.SelectQuery("select * from Items as I INNER JOIN PackageItems as PT on I.Item_ID = PT.Item_ID where I.UserId ='"+User_Id + "' and PT.Package_ID='"+PackageId+"'");
                SearchCatererItemList.DataBind();
            }
        }
    }
}