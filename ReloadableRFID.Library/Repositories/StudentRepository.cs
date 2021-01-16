using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using MySql.Data.MySqlClient;
using ReloadableRFID.Library.Models;

namespace ReloadableRFID.Library.Repositories
{
    public class StudentRepository
    {
        public static async Task<int> InsertStudentAsync(StudentModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into students (UserId, StudentNo, FirstName, MiddleName, LastName, Dob, Gender, Address, DepartmentId, CourseId, YearLevelId, Photo) values (@UserId, @StudentNo, upper(@FirstName), upper(@MiddleName), upper(@LastName), @Dob, @Gender, upper(@Address), @DepartmentId, @CourseId, @YearLevelId, @Photo)";
                var parameters = new DynamicParameters();
                parameters.Add("UserId", model.UserId, DbType.Int32);
                parameters.Add("StudentNo", model.StudentNo, DbType.String);
                parameters.Add("FirstName", model.FirstName, DbType.String);
                parameters.Add("MiddleName", model.MiddleName, DbType.String);
                parameters.Add("LastName", model.LastName, DbType.String);
                parameters.Add("Dob", model.Dob, DbType.Date);
                parameters.Add("Gender", model.Gender, DbType.String);
                parameters.Add("Address", model.Address, DbType.String);
                parameters.Add("DepartmentId", model.DepartmentId, DbType.Int32);
                parameters.Add("CourseId", model.CourseId, DbType.Int32);
                parameters.Add("YearLevelId", model.YearLevelId, DbType.Int32);
                parameters.Add("Photo", model.Photo, DbType.Binary);
                return await connection.ExecuteAsync(query, parameters);
            }
        }
    }
}
