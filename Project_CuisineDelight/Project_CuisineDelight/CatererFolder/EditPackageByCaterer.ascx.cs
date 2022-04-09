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
    public partial class EditPackageByCaterer1 : System.Web.UI.UserControl
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string IDCAT = Request.QueryString["IDCAT"];
            if (!IsPostBack)
            {
               
                LoadGrid();
            }
        }
        protected void EditPackageBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string IDCAT = Request.QueryString["IDCAT"];
                if (IDCAT != null)

                {
                    bool flag = false;
                    
                    TextBox PackageName = (TextBox)FormView1.FindControl("PackageName");
                    TextBox PackageDesciption = (TextBox)FormView1.FindControl("PackageDesciption");
                    TextBox PackageDiscount = (TextBox)FormView1.FindControl("PackageDiscount");
                    TextBox PackagePrice = (TextBox)FormView1.FindControl("PackagePrice");
                    FileUpload uploadedFile = (FileUpload)FormView1.FindControl("PackageImage");
                    Image ExistingImage = (Image)FormView1.FindControl("PackageImageDB");
                    Label msg = (Label)FormView1.FindControl("SuccessMsg");
                    if (uploadedFile.PostedFile != null && uploadedFile.PostedFile.ContentLength > 0)
                    {
                        string ImageName = uploadedFile.FileName;
                        uploadedFile.PostedFile.SaveAs(Server.MapPath("~/CatererFolder/PackageImage/") + ImageName);
                    }
                    else
                    {

                        flag = true;
                    }
                    using (SqlConnection myconnection = new SqlConnection(connectionString))
                    {
                        
                        SqlCommand mycommand = new SqlCommand("EditPackage", myconnection);
                        mycommand.CommandType = CommandType.StoredProcedure;
                        mycommand.Parameters.Add("@Package_Name", SqlDbType.VarChar).Value = PackageName.Text;
                        mycommand.Parameters.Add("@Package_Desc", SqlDbType.VarChar).Value = PackageDesciption.Text;
                        mycommand.Parameters.Add("@Package_Discount", SqlDbType.Int).Value = int.Parse(PackageDiscount.Text);
                        if (!flag)
                        {
                            mycommand.Parameters.Add("@Package_Image", SqlDbType.VarChar).Value = (uploadedFile.FileName).ToString();
                        }
                        else
                        {
                            mycommand.Parameters.Add("@Package_Image", SqlDbType.VarChar).Value = Path.GetFileName(ExistingImage.ImageUrl);
                        }
                        mycommand.Parameters.Add("@Package_ID", SqlDbType.Int).Value = int.Parse(IDCAT);
                        myconnection.Open();
                        int k = mycommand.ExecuteNonQuery();
                        if (k > 0)
                        {
                            msg.Text = "You have successfully edited the item";
                            
                           
                        }
                        myconnection.Close();

                    }

                    

                }
                UpdatePrice();

            }
            LoadGrid();

        }
        private void UpdatePrice()
        {
            string IDCAT = Request.QueryString["IDCAT"];
            int GettingPackageID = int.Parse(IDCAT);
            Session["UserName"] = Membership.GetUser().UserName;
            string Username = Session["UserName"].ToString();
            SqlConnection con = new SqlConnection(connectionString);
            
            con.Open();
            SqlCommand com = new SqlCommand("Select sum(I.Item_Price*PT.Quantity) as TotalPrice from PackageItems AS PT INNER JOIN  Items as I ON PT.Item_ID=I.Item_ID where PT.Package_ID = '" + GettingPackageID + "' and I.UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  
            string NoofRow = ds.Tables[0].Rows.Count.ToString();
            int noOFrows = int.Parse(NoofRow);
            if (noOFrows > 0)
            {
              
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {
                    SqlCommand mycommand = new SqlCommand("UpdatePrice", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                    mycommand.Parameters.Add("@Package_Price", SqlDbType.NChar).Value = ds.Tables[0].Rows[0]["TotalPrice"].ToString();                
                    mycommand.Parameters.Add("@Package_ID", SqlDbType.Int).Value = GettingPackageID;
                    myconnection.Open();
                    mycommand.ExecuteNonQuery();
                    myconnection.Close();
                }
            }
            con.Close();
        }
        protected void Cancel(object sender, EventArgs e)
        {

            Response.Redirect("~/CatererFolder/CatererMenu", false);
        }
        private void LoadGrid()
        {
            string IDCAT = Request.QueryString["IDCAT"];
            if (IDCAT != null)
            {
                FormView1.DataSource = DataAccess.SelectQuery("SELECT * FROM Packages WHERE Package_ID=" + IDCAT);
                FormView1.DataBind();
                Session["UserName"] = Membership.GetUser().UserName;
                string Username = Session["UserName"].ToString();
                DropDownList DropItem = (DropDownList)FormView1.FindControl("DropDownListItem");
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                SqlCommand com = new SqlCommand("Select * from Items where UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')", con);
                // table name   
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset  
                DropItem.DataTextField = ds.Tables[0].Columns["Item_Name"].ToString(); // text field name of table dispalyed in dropdown       
                DropItem.DataValueField = ds.Tables[0].Columns["Item_ID"].ToString();
                // to retrive specific  textfield name   
                DropItem.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                DropItem.DataBind();  //binding dropdownlist 
                con.Close();
            }
        }

            protected void AddItemsToPackageBtn(object sender, EventArgs e)
        {
           
            if (Page.IsValid)
            {
                DropDownList DropItem = (DropDownList)FormView1.FindControl("DropDownListItem");
                string IDCAT = Request.QueryString["IDCAT"];
                if (IDCAT != null)
                {                   
                    TextBox itemQuantity = (TextBox)FormView1.FindControl("ItemQuantity");                   
                    int GettingItemId= int.Parse(DropItem.SelectedValue);
                    int GettingPackageID = int.Parse(IDCAT);
                    int GettingQuantity= int.Parse(itemQuantity.Text);
                    Session["UserName"] = Membership.GetUser().UserName;
                    string Username = Session["UserName"].ToString();
                    SqlConnection con = new SqlConnection(connectionString);
                    con.Open();
                    SqlCommand com = new SqlCommand("Select PT.Item_Name, PT.Quantity from PackageItems AS PT INNER JOIN  Items as I ON PT.Item_ID=I.Item_ID where PT.Package_ID = '" + GettingPackageID+"' and PT.Item_ID = '"+ GettingItemId + "' and I.UserId in (SELECT UserId FROM Users where UserName = '" + Username + "')", con);
                    // table name   
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);  // fill dataset  
                    string NoofRow = ds.Tables[0].Rows.Count.ToString();
                    
                    int noOFrows=int.Parse(NoofRow);
                    if (noOFrows > 0)
                    {
                        int.TryParse(ds.Tables[0].Columns["Quantity"].ToString(), out int ItemQty);
                        
                        int FinalQty = ItemQty + GettingQuantity;
                        using (SqlConnection myconnection = new SqlConnection(connectionString))
                        {
                            SqlCommand mycommand = new SqlCommand("UpdateItemtoPackages", myconnection);
                            mycommand.CommandType = CommandType.StoredProcedure;
                            mycommand.Parameters.Add("@Item_Name", SqlDbType.VarChar).Value = DropItem.SelectedItem.Text;
                            mycommand.Parameters.Add("@Quantity", SqlDbType.Int).Value = FinalQty;
                            mycommand.Parameters.Add("@Item_ID ", SqlDbType.Int).Value = GettingItemId;
                            mycommand.Parameters.Add("@Package_ID", SqlDbType.Int).Value = GettingPackageID;
                            myconnection.Open();
                            mycommand.ExecuteNonQuery();
                            myconnection.Close();
                        }
                    }
                    else
                    {
                        using (SqlConnection myconnection = new SqlConnection(connectionString))
                        {
                            SqlCommand mycommand = new SqlCommand("AddingItemtoPackages", myconnection);
                            mycommand.CommandType = CommandType.StoredProcedure;
                            mycommand.Parameters.Add("@Item_Name", SqlDbType.VarChar).Value = DropItem.SelectedItem.Text;
                            mycommand.Parameters.Add("@Quantity", SqlDbType.Int).Value = GettingQuantity;
                            mycommand.Parameters.Add("@Item_ID ", SqlDbType.Int).Value = GettingItemId;
                            mycommand.Parameters.Add("@Package_ID", SqlDbType.Int).Value = GettingPackageID;
                            myconnection.Open();
                            mycommand.ExecuteNonQuery();
                            myconnection.Close();
                        }
                    }
                    con.Close();
                    //updating the price of the package


                }
                UpdatePrice();
                LoadGrid();
            }

        }
    }
}