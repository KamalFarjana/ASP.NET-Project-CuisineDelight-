using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class searchOrderControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                MembershipUser Newuser = Membership.GetUser();
                Guid newuserid = (Guid)Newuser.ProviderUserKey;
                Request.QueryString["userID"] = newuserid.ToString();
                
            }
            }
    }
}