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
    public class DepartmentRepository
    {
        public static async Task<int> InsertDepartmentAsync(DepartmentModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into departments (Department) values (upper(@Department))";
                var parameters = new DynamicParameters();
                parameters.Add("Department", model.Department, DbType.String);
                return await connection.ExecuteAsync(query, parameters);
            }
        }

        public static async Task<IEnumerable<DepartmentModel>> GetDepartmentsAsync()
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from departments order by Department";
                return await connection.QueryAsync<DepartmentModel>(query);
            }
        }
    }
}
