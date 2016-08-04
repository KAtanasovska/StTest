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
    public partial class Edit_database : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringHRManagement"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAddDepartment_Click(object sender, EventArgs e)
        {
            lblAddedDepartment.InnerText = "into the metod";
            try
            {
                conn.Open();
                Id_generator idGenerator = new Id_generator("Department");
                int department_id_generated = idGenerator.generate();
                lblAddedDepartment.InnerText = "added";
                string insertLeaveQuery = "insert into Department(Id, Department_name) values(@id, @name)";
                SqlCommand sqlCommand = new SqlCommand(insertLeaveQuery, conn);
                sqlCommand.Parameters.AddWithValue("@id", department_id_generated.ToString());
                sqlCommand.Parameters.AddWithValue("@name", inDepartmentName.Value.ToString());
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedDepartment.InnerText = "added";

            }
            catch (Exception ex)
            {
                lblAddedDepartment.InnerText = "Something went wrong";
            }



        }

       

        protected void btnDeleteDepartment_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                int index = ddlDepartment.SelectedIndex + 1;
                string deleteDepartmentQuery = "delete from Department where Id=" + index;
                SqlCommand sqlCommand = new SqlCommand(deleteDepartmentQuery, conn);
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedDepartment.InnerText = "Deleted";
            }
            catch (Exception ex){
                lblAddedDepartment.InnerText = "not deleted";

            }

        }

        protected void btnAddJobCategory_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                Id_generator idGenerator = new Id_generator("Job_category");
                int job_category_id_generated = idGenerator.generate();
                lblAddedJobCategory.InnerText = "added";
                string insertLeaveQuery = "insert into Job_category(Id, category) values(@id, @name)";
                SqlCommand sqlCommand = new SqlCommand(insertLeaveQuery, conn);
                sqlCommand.Parameters.AddWithValue("@id", job_category_id_generated.ToString());
                sqlCommand.Parameters.AddWithValue("@name", inJobCategoryName.Value.ToString());
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedJobCategory.InnerText = "added";

            }
            catch (Exception ex)
            {
                lblAddedJobCategory.InnerText = "Something went wrong";
            }

        }

        protected void btnDeleteJobCategory_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                int index = ddlJobCategory.SelectedIndex + 1;
                string deleteJobCategoryQuery = "delete from Job_category where Id=" + index;
                SqlCommand sqlCommand = new SqlCommand(deleteJobCategoryQuery, conn);
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedJobCategory.InnerText = "Deleted";
            }
            catch (Exception ex)
            {
                lblAddedJobCategory.InnerText = "not deleted";

            }
        }

        protected void btnAddJob_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                Id_generator idGenerator = new Id_generator("Job");
                int job_id_generated = idGenerator.generate();
                int index = ddlJobCategoryJob.SelectedIndex + 1;
                lblAddedJob.InnerText = "added";
                string insertLeaveQuery = "insert into Job(Id, JobName, Job_category_id) values(@id, @name, @category)";
                SqlCommand sqlCommand = new SqlCommand(insertLeaveQuery, conn);
                sqlCommand.Parameters.AddWithValue("@id", job_id_generated.ToString());
                sqlCommand.Parameters.AddWithValue("@name", inJobTitle.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@category", index);
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedJob.InnerText = "added";

            }
            catch (Exception ex)
            {
                lblAddedJob.InnerText = "Something went wrong";
            }
        }

        protected void btnDeleteJob_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                int index = ddlJob.SelectedIndex + 1;
                string deleteJobQuery = "delete from Job where Id=" + index;
                SqlCommand sqlCommand = new SqlCommand(deleteJobQuery, conn);
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedJob.InnerText = "Deleted";
            }
            catch (Exception ex)
            {
                lblAddedJob.InnerText = "not deleted";

            }
        }

        protected void btnAddSkill_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                Id_generator idGenerator = new Id_generator("Skills");
                int skills_id_generated = idGenerator.generate();
                lblAddedSkill.InnerText = "added";
                string insertLeaveQuery = "insert into Skills(Id, Skill_name) values(@id, @name)";
                SqlCommand sqlCommand = new SqlCommand(insertLeaveQuery, conn);
                sqlCommand.Parameters.AddWithValue("@id", skills_id_generated.ToString());
                sqlCommand.Parameters.AddWithValue("@name", inSkillName.Value.ToString());
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedSkill.InnerText = "added";

            }
            catch (Exception ex)
            {
                lblAddedSkill.InnerText = "Something went wrong";
            }

        }

        protected void btnDeleteSkill_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                int index = ddlSkills.SelectedIndex + 1;
                string deleteSkillQuery = "delete from Skills where Id=" + index;
                SqlCommand sqlCommand = new SqlCommand(deleteSkillQuery, conn);
                sqlCommand.ExecuteNonQuery();
                conn.Close();
                lblAddedSkill.InnerText = "Deleted";
            }
            catch (Exception ex)
            {
                lblAddedSkill.InnerText = "not deleted";

            }

        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            string date = today.ToString("yyyy-MM-dd");
            Id_generator idGenerator = new Id_generator("Employee");
            int employee_id_generated = idGenerator.generate();
            try
            {
                conn.Open();
                
                lblAddedEmployee.InnerText = "added";
                string insertEmployeeQuery = "insert into Employee(Id, first_name, last_name, UserName, Password, EMBG, Addres, Phone, Education, Start_employment_date, Vacation_days, Status_present, Status_employed, Title, Job_id, Department_id) values(@id, @fname, @lname, @uname, @pass, @embg, @address, @phone, @education, @startDate, @vacation, @present, @employed, @title, @job, @department)";
                SqlCommand sqlCommand = new SqlCommand(insertEmployeeQuery, conn);
                sqlCommand.Parameters.AddWithValue("@id", employee_id_generated.ToString());
                sqlCommand.Parameters.AddWithValue("@fname", inFirstName.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@lname", inLastName.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@uname", inUsername.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@pass", inPassword.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@embg", inEMBG.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@address", inAddress.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@phone", inPhone.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@education", inEducation.Value.ToString());
                
                sqlCommand.Parameters.AddWithValue("@startDate", date);
                //sqlCommand.Parameters.AddWithValue("@endDate", null);
                sqlCommand.Parameters.AddWithValue("@vacation", inVacationDays.Value.ToString());
                sqlCommand.Parameters.AddWithValue("@present", 1);
                sqlCommand.Parameters.AddWithValue("@employed", 1);
                //
                if (rbTitleEmployee.Checked==true)
                {
                    sqlCommand.Parameters.AddWithValue("@title", "Employee");
                }
                else {
                    sqlCommand.Parameters.AddWithValue("@title", "Manager");
                }
                sqlCommand.Parameters.AddWithValue("@job", ddlJobTitleEmployee.SelectedIndex+1);
                sqlCommand.Parameters.AddWithValue("@department", ddlDepartmentEmployee.SelectedIndex+1);
                sqlCommand.ExecuteNonQuery();

              
                
                conn.Close();
                lblAddedEmployee.InnerText = "added";

            }
            catch (Exception ex)
            {
                lblAddedEmployee.InnerText = "Something went wrong   " + date;
            }

            //Skills

            try
            {
                conn.Open();
                int hasSkill_id_generated;


                foreach (ListItem li in lbSkillsEmployee.Items)
                {
                    if (li.Selected)
                    {
                        
                        idGenerator = new Id_generator("HasSkill");
                        hasSkill_id_generated = idGenerator.generate();
                        string insertHasSkillQuery = "insert into HasSkill(Id, Employee_id, Skill_id) values(@id, @employee, @skill)";
                        SqlCommand sqlCommand = new SqlCommand(insertHasSkillQuery, conn);
                        sqlCommand.Parameters.AddWithValue("@id", hasSkill_id_generated);
                        sqlCommand.Parameters.AddWithValue("@employee", employee_id_generated);
                        sqlCommand.Parameters.AddWithValue("@skill", Convert.ToInt32(li.Value.ToString()));
                        lblAddedEmployee.InnerText = li.Value.ToString();
                        sqlCommand.ExecuteNonQuery();

                    }
                }
                lblAddedSkill.InnerText = "skills Added :) ";
                conn.Close();

            }
            catch (Exception ex) {
                
            }

        }
    }

}