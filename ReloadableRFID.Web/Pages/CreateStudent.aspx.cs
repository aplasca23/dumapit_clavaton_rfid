using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReloadableRFID.Library;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;

namespace ReloadableRFID.Web.Pages
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        private void ResetForm()
        {
            txtStudentNo.Text = string.Empty;
            txtFN.Text = string.Empty;
            txtMN.Text = string.Empty;
            txtLN.Text = string.Empty;
            txtDob.Text = string.Empty;
            rblGender.ClearSelection();
            txtAddress.Text = string.Empty;
            ddlDepartments.ClearSelection();
            ddlCourses.ClearSelection();
            ddlYearLevels.ClearSelection();
            fuPhoto.Attributes.Clear();
        }
        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlDepartments.AppendDataBoundItems = true;
                ddlDepartments.DataSource = await DepartmentRepository.GetDepartmentsAsync();
                ddlDepartments.DataValueField = "Id";
                ddlDepartments.DataTextField = "Department";
                ddlDepartments.DataBind();

                ddlYearLevels.AppendDataBoundItems = true;
                ddlYearLevels.DataSource = await YearLevelRepository.GetYearLevelsAsync();
                ddlYearLevels.DataValueField = "Id";
                ddlYearLevels.DataTextField = "YearLevel";
                ddlYearLevels.DataBind();
            }

        }

        protected async void ddlDepartments_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            var courses = await CourseRepository.GetCoursesByDepartmentAsync(Int32.Parse(ddlDepartments.SelectedItem.Value));
            ddlCourses.Items.Clear();
            ddlCourses.Items.Add(new ListItem("-- SELECT COURSE --", "0"));
            ddlCourses.AppendDataBoundItems = true;
            ddlCourses.DataSource = courses;
            ddlCourses.DataValueField = "Id";
            ddlCourses.DataTextField = "Course";
            ddlCourses.DataBind();
        }

        protected async void btnRegister_OnClick(object sender, EventArgs e)
        {
            try
            {
                int userId = await UserRepository.GenerateKey();
                var user = new UserModel()
                {
                    Id = userId,
                    Username = $"student{userId}",
                    Password = $"student{userId}",
                    AccountTypeId = GlobalVariable.StudentAccountTypeId
                };
                var student = new StudentModel()
                {
                    UserId = userId,
                    StudentNo = txtStudentNo.Text,
                    FirstName = txtFN.Text,
                    MiddleName = txtMN.Text,
                    LastName = txtLN.Text,
                    Dob = Convert.ToDateTime(txtDob.Text, CultureInfo.InvariantCulture),
                    Gender = rblGender.SelectedItem.Value,
                    Address = txtAddress.Text,
                    DepartmentId = Int32.Parse(ddlDepartments.SelectedItem.Value),
                    CourseId = Int32.Parse(ddlCourses.SelectedItem.Value),
                    YearLevelId = Int32.Parse(ddlYearLevels.SelectedItem.Value),
                    Photo = fuPhoto.FileBytes
                };
                await UserRepository.InsertUserAsync(user);
                await StudentRepository.InsertStudentAsync(student);
                Response.Write(@"<script>alert('Record successfully created!');</script>");
                ResetForm();
            }
            catch (Exception exception)
            {
                Response.Write($@"<script>alert('${exception.Message}');</script>");
            }
            
        }
    }
}