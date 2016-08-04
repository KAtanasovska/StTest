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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Id_generator idGenerator = new Id_generator("Leave");
            int leave_id_generated = idGenerator.generate();
            try
            {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringHRManagement"].ConnectionString);
                conn.Open();
                string id = Request.QueryString["id"];
                string leaveStatus = "Pending";
                int index = ddlstTypeOfLeave.SelectedIndex + 1;
                string insertLeaveQuery = "insert into Leave(Id, Comment, From_date, To_date,  Status, Leave_type_id, Employee_id) values(@id, @comment, @from, @to, @status, @type, @e_id)";
                SqlCommand sqlCommand = new SqlCommand(insertLeaveQuery, conn);
                sqlCommand.Parameters.AddWithValue("@id", leave_id_generated.ToString());
                sqlCommand.Parameters.AddWithValue("@from", tbDateFrom.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@to", tbDateTo.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@type", index);
                sqlCommand.Parameters.AddWithValue("@e_id", id);
                sqlCommand.Parameters.AddWithValue("@comment", tbComment.Text.ToString());
                sqlCommand.Parameters.AddWithValue("@status", leaveStatus);
                sqlCommand.ExecuteNonQuery();
                lblAddedLeave.InnerText = "The request was succesfully added ";
                conn.Close();
            }
            catch(Exception ex) {
                lblAddedLeave.InnerText = "Something went wrong " + tbDateFrom.Value.ToString() + " " + tbDateTo.Value.ToString() + " " + ddlstTypeOfLeave.SelectedIndex + "leave id generated = " + leave_id_generated;
            }

        }
    }
}