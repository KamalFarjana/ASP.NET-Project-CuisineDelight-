using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class UserViewingtems : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                ViewAllItems.DataSource = DataAccess.SelectQuery("SELECT * from Items as CD inner join Users as U on CD.UserId = U.UserId inner join UserDetails as Ud on Ud.UserId = u.UserId where Ud.UserType = '2'");
                ViewAllItems.DataBind();


            }
        }
    }
}