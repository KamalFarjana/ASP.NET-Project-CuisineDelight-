﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight.Customer
{
    public partial class UserProfileImage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = Membership.GetUser().UserName;
            string Username = Session["UserName"].ToString();
            if (!IsPostBack)
            {
                DataList1.DataSource = DataAccess.SelectQuery("select UserImage from UserDetails where UserId  in (SELECT UserId FROM Users where UserName = '" + Username + "')");
                DataList1.DataBind();
                
            }

        }
    }
}