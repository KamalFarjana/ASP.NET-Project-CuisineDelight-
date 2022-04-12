using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Project_CuisineDelight.CatererFolder
{
    public partial class CatererProfile : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ContinuePushButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }
        protected void ChanegPicture_Click(object sender, EventArgs e)
        {
            MembershipUser Newuser = Membership.GetUser();
            Guid newuserid = (Guid)Newuser.ProviderUserKey;
            bool flag = false;
            FileUpload uploadedFile = (FileUpload)LoginView1.FindControl("FileUpload1");
            Image ExistingImage = (Image)LoginView1.FindControl("Image1");
            if (uploadedFile.PostedFile != null && uploadedFile.PostedFile.ContentLength > 0)
            {
                Session["UserName"] = Membership.GetUser().UserName;
                string Username = Session["UserName"].ToString();
                string ImageName = Username + DateTime.Now.ToString("yyyyMMddHHmmssfff") + System.IO.Path.GetExtension(uploadedFile.FileName);
                uploadedFile.PostedFile.SaveAs(Server.MapPath("~/CatererFolder/CatererProfileImage/") + ImageName);
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {

                    SqlCommand mycommand = new SqlCommand("ChangingLogo", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                    mycommand.Parameters.Add("@Logo", SqlDbType.VarChar).Value = ImageName;
                    mycommand.Parameters.Add("@UserId", SqlDbType.UniqueIdentifier).Value = newuserid; ;
                    myconnection.Open();
                    mycommand.ExecuteNonQuery();
                    myconnection.Close();
                    Response.Redirect("~/CatererFolder/CatererProfile.aspx");
                }
            }



        }
    }
}