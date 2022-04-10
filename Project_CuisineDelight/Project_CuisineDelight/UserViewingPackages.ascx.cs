using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class UserViewingPackages : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IDCAT = Request.QueryString["IDCAT"];
            if (!IsPostBack)
            {

                string PackageId = Request.QueryString["IDPakcageCAT"];
                FormView1.DataSource = DataAccess.SelectQuery("SELECT * FROM Packages WHERE Package_ID=" + PackageId);
                FormView1.DataBind();
            }
        }

       
    }
}