using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Project_CuisineDelight
{
    public class DataAccess
    {
        private static string myConnectionString;

        static DataAccess()

        {
            myConnectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        }

        public static DataTable SelectQuery(string query)

        {

            DataTable dt = new DataTable();

            SqlConnection cnn = new SqlConnection(myConnectionString);

            cnn.Open();

            SqlCommand cmd = new SqlCommand(query, cnn);

            dt.Load(cmd.ExecuteReader());

            cnn.Close();

            return dt;



        }
    }
}