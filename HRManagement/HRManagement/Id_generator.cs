using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace HRManagement
{
    public class Id_generator
    {
        string table;

        public Id_generator(string t)
        {
            this.table = t;
        }

        public int generate()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringHRManagement"].ConnectionString);
            conn.Open();
            string getMax = "Select Max(Id) from " + table;
            SqlCommand sqlCommand = new SqlCommand(getMax, conn);
            if (sqlCommand.ExecuteScalar() == null)
            {
                return 1;
            }
            else
            {

                return Convert.ToInt32(sqlCommand.ExecuteScalar().ToString())+1;
            }


        }
    }
}