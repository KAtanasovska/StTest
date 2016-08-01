using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace HRManagement
{
    public partial class Employee_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringHRManagement"].ConnectionString);
            conn.Open();
            string id = Request.QueryString["id"];
            string vacationDays = "Select Vacation_days from Employee where id='" + id + "'";
            SqlCommand sqlCommand = new SqlCommand(vacationDays, conn);
            lbDaysOfVacation.Text = sqlCommand.ExecuteScalar().ToString();

            conn.Close();

        }
    }
}