using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class SearchControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                string SearchResult = Request.QueryString["result"];
                SearchDataList.DataSource = DataAccess.SelectQuery("select DISTINCT U.UserName, U.UserId, CD.Logo from Items as I INNER JOIN Users as U on I.UserId = U.UserId inner join CatererDetails as CD ON CD.UserId = U.UserId where I.Item_Type LIKE '%" + SearchResult+"%' or I.Item_Desc LIKE '%"+SearchResult+"%' or  I.Item_Name LIKE '%"+SearchResult+"%'");
                SearchDataList.DataBind();
                if (SearchDataList == null || SearchDataList.Items.Count == 0)
                {
                    

                    NoSearchFoundMessage.Text = "No Search Results Found !!!!!";
                }
                   
            }
        }
    }
}