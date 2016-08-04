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
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

   

        protected void btnLogin_Click1(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringHRManagement"].ConnectionString);
            conn.Open();
            string checkUser = "Select id from Employee where username='" + inUsername.Value.ToString() + "' and password='" + inPassword.Value.ToString() + "'";
            SqlCommand sqlCommand = new SqlCommand(checkUser, conn);


            if (sqlCommand.ExecuteScalar() == null)
            {
                lblInvalidUserPassword.InnerText = "Invalid username or password";
            }
            else
            {
                int id = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());
                lblInvalidUserPassword.InnerText = "Valid username and password";
                string getTitle = "Select Title from Employee where id='" + id + "'";
                sqlCommand = new SqlCommand(getTitle, conn);
                string title = sqlCommand.ExecuteScalar().ToString();
                lblInvalidUserPassword.InnerText = "the title is " + title;
                if (title == "Employee")
                {
                    Response.Redirect("Employee_page.aspx?id=" + id);
                }
                else
                {
                    Response.Redirect("Manager_page.aspx?id=" + id);
                }

                //treba da ja otvoram manager ili employee so id 
            }
            conn.Close();
        }
    }
}