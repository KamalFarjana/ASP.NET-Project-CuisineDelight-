using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Project_CuisineDelight.CatererFolder
{
    public partial class AddingPackage : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void AddPackageBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MembershipUser Newuser = Membership.GetUser();
                Guid newuserid = (Guid)Newuser.ProviderUserKey;
                TextBox PackageName = (TextBox)LoginView1.FindControl("PackageName");
                TextBox PackageDesciption = (TextBox)LoginView1.FindControl("PackageDesciption");
                TextBox PackageDiscount = (TextBox)LoginView1.FindControl("PackageDiscount");
                FileUpload uploadedFile = (FileUpload)LoginView1.FindControl("PackageImage");
                Label msg = (Label)LoginView1.FindControl("SuccessMsg");
                if (uploadedFile.PostedFile != null && uploadedFile.PostedFile.ContentLength > 0)
                {
                    string ImageName = uploadedFile.FileName;
                    uploadedFile.PostedFile.SaveAs(Server.MapPath("~/CatererFolder/PackageImage/") + ImageName);
                }
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {
                    
                    SqlCommand mycommand = new SqlCommand("AddingPackages", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                    mycommand.Parameters.Add("@Package_Name", SqlDbType.VarChar).Value = PackageName.Text;
                    mycommand.Parameters.Add("@Package_Desc ", SqlDbType.VarChar).Value = PackageDesciption.Text;
                    mycommand.Parameters.Add("@Package_Discount", SqlDbType.Int).Value = int.Parse(PackageDiscount.Text);
                    mycommand.Parameters.Add("@userId", SqlDbType.UniqueIdentifier).Value = newuserid;
                    mycommand.Parameters.Add("@Package_Image", SqlDbType.VarChar).Value = (uploadedFile.FileName).ToString();
                    myconnection.Open();
                    int k = mycommand.ExecuteNonQuery();
                    if (k > 0)
                    {
                        msg.Text = "You have successfully listed a new package";
                        PackageName.Text = "";
                        PackageDesciption.Text = "";
                        PackageDiscount.Text = "";

                    }
                    myconnection.Close();
                }


            }

        }
        protected void AddItemToPackageBtn_Click(object sender, EventArgs e)
        {
            
        }
    }
       
}