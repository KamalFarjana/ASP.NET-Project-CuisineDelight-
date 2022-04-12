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
    public partial class CatererAddingItem_ : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void AddItemBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MembershipUser Newuser = Membership.GetUser();
                Guid newuserid = (Guid)Newuser.ProviderUserKey;
                TextBox itemName = (TextBox)LoginView1.FindControl("ItemName");
                TextBox itemDesciption = (TextBox)LoginView1.FindControl("ItemDesciption");
                TextBox itemPrice = (TextBox)LoginView1.FindControl("ItemPrice");
                FileUpload uploadedFile = (FileUpload)LoginView1.FindControl("ItemImage");
                DropDownList ddl = (DropDownList)LoginView1.FindControl("ItemDropDownList");
                Label msg = (Label)LoginView1.FindControl("SuccessMsg");
                if (uploadedFile.PostedFile != null && uploadedFile.PostedFile.ContentLength>0)
                {
                    string ImageName = uploadedFile.FileName;
                    uploadedFile.PostedFile.SaveAs(Server.MapPath("~/CatererFolder/ItemImage/") + ImageName);
                }
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {
                    
                    SqlCommand mycommand = new SqlCommand("AddItem", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                    mycommand.Parameters.Add("@Item_Name", SqlDbType.VarChar).Value = itemName.Text;
                    mycommand.Parameters.Add("@Item_Desc", SqlDbType.VarChar).Value = itemDesciption.Text;
                    mycommand.Parameters.Add("@Item_Price", SqlDbType.Int).Value = int.Parse(itemPrice.Text);
                    mycommand.Parameters.Add("@userId", SqlDbType.UniqueIdentifier).Value = newuserid;
                    mycommand.Parameters.Add("@Item_Image", SqlDbType.VarChar).Value = (uploadedFile.FileName).ToString();
                    mycommand.Parameters.Add("@Item_Type", SqlDbType.VarChar).Value = ddl.SelectedItem.Text;
                    
                    myconnection.Open();
                    int k=mycommand.ExecuteNonQuery();
                    if (k > 0)
                    {
                        msg.Text = "You have successfully listed a new item";
                        itemName.Text = "";
                        itemDesciption.Text = "";
                        itemPrice.Text = "";

                    }
                    myconnection.Close();
                }
               

            }

        }
    }
}