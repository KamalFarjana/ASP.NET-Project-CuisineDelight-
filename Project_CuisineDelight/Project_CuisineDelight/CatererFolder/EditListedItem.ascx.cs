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
    public partial class EditListedItem1 : System.Web.UI.UserControl
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                string IDCAT = Request.QueryString["IDCAT"];

                if (IDCAT != null)

                {

                    FormView1.DataSource = DataAccess.SelectQuery("SELECT * FROM Items WHERE Item_ID=" + IDCAT);

                    FormView1.DataBind();

                }

            }
        }
        protected void EditItemBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string IDCAT = Request.QueryString["IDCAT"];
                if (IDCAT != null)

                {
                    bool flag = false;
                    TextBox itemName = (TextBox)FormView1.FindControl("ItemName");
                    TextBox itemDesciption = (TextBox)FormView1.FindControl("ItemDesciption");
                    TextBox itemPrice = (TextBox)FormView1.FindControl("ItemPrice");
                    FileUpload uploadedFile = (FileUpload)FormView1.FindControl("ItemImage");
                    Image ExistingImage = (Image)FormView1.FindControl("ItemImageDB");
                    Label msg = (Label)FormView1.FindControl("SuccessMsg");
                    if (uploadedFile.PostedFile != null && uploadedFile.PostedFile.ContentLength > 0)
                    {
                        string ImageName = uploadedFile.FileName;
                        uploadedFile.PostedFile.SaveAs(Server.MapPath("~/CatererFolder/ItemImage/") + ImageName);
                    }
                    else
                    {
                        
                        flag = true;
                    }
                    using (SqlConnection myconnection = new SqlConnection(connectionString))
                    {
                        int x = 0,y=0;
                        SqlCommand mycommand = new SqlCommand("EditItem", myconnection);
                        mycommand.CommandType = CommandType.StoredProcedure;
                        mycommand.Parameters.Add("@Item_Name", SqlDbType.VarChar).Value = itemName.Text;
                        mycommand.Parameters.Add("@Item_Desc", SqlDbType.VarChar).Value = itemDesciption.Text;
                        mycommand.Parameters.Add("@Item_Price", SqlDbType.Int).Value = int.Parse(itemPrice.Text);
                        if (!flag)
                        {
                            mycommand.Parameters.Add("@Item_Image", SqlDbType.VarChar).Value = (uploadedFile.FileName).ToString();
                        }
                        else
                        {
                            mycommand.Parameters.Add("@Item_Image", SqlDbType.VarChar).Value = Path.GetFileName(ExistingImage.ImageUrl);
                        }
                        mycommand.Parameters.Add("@Item_ID", SqlDbType.Int).Value = int.Parse(IDCAT);
                        myconnection.Open();
                        int k = mycommand.ExecuteNonQuery();
                        if (k > 0)
                        {
                            msg.Text = "You have successfully edited the item";
                            FormView1.DataSource = DataAccess.SelectQuery("SELECT * FROM Items WHERE Item_ID=" + IDCAT);

                            FormView1.DataBind();
                        }
                        myconnection.Close();
                      
                    }


                }


            }


        }
        protected void Cancel(object sender, EventArgs e)
        {

            Response.Redirect("~/CatererFolder/CatererMenu", false);
        }
    }
}