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
    public class CourseRepository
    {
        public static async Task<int> InsertCourseAsync(CourseModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into courses (DepartmentId, Course) values (@DepartmentId, upper(@Course))";
                var parameters = new DynamicParameters();
                parameters.Add("DepartmentId", model.DepartmentId, DbType.Int32);
                parameters.Add("Course", model.Course, DbType.String);
                return await connection.ExecuteAsync(query, parameters);
            }
        }

        public static async Task<IEnumerable<CourseModel>> GetCoursesByDepartmentAsync(int departmentId)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from courses where DepartmentId = @DepartmentId";
                var parameters = new DynamicParameters();
                parameters.Add("DepartmentId", departmentId, DbType.Int32);
                return await connection.QueryAsync<CourseModel>(query, parameters);
            }
        }
    }
}
