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
    public partial class Delete : System.Web.UI.Page
    {
        public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string IDCAT = Request.QueryString["IDCAT"];

            if (IDCAT != null)

            {
                using (SqlConnection myconnection = new SqlConnection(connectionString))
                {
                   
                    SqlCommand mycommand = new SqlCommand("DeleteItem", myconnection);
                    mycommand.CommandType = CommandType.StoredProcedure;
                   
                    mycommand.Parameters.Add("@Item_ID", SqlDbType.Int).Value = int.Parse(IDCAT);
                    myconnection.Open();
                    int k = mycommand.ExecuteNonQuery();
                    
                    myconnection.Close();
                    Response.Redirect("~/CatererFolder/CatererMenu", true);
                }

            }
        }
    }
}