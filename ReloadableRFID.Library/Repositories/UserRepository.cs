using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using MySql.Data;
using MySql.Data.MySqlClient;
using ReloadableRFID.Library.Models;

namespace ReloadableRFID.Library.Repositories
{
    public class UserRepository
    {
        public static async Task<int> GenerateKey()
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select max(Id) + 1 from users";
                return await connection.ExecuteScalarAsync<int>(query);
            }
        }
        public static async Task<int> InsertUserAsync(UserModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into users (Id, Username, Password, AccountTypeId) values (@Id, @Username, sha1(@Password), @AccountTypeId)";
                var parameters = new DynamicParameters();
                parameters.Add("Id", model.Id, DbType.Int32);
                parameters.Add("Username", model.Username, DbType.String);
                parameters.Add("Password", model.Password, DbType.String);
                parameters.Add("AccountTypeId", model.AccountTypeId, DbType.Int32);
                return await connection.ExecuteAsync(query, parameters);
            }
        }

        public static async Task<UserModel> GetUserDetails(string username, string password)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from users where lower(Username) = lower(@Username) and Password = sha1(@Password)";
                var parameters = new DynamicParameters();
                parameters.Add("Username", username, DbType.String);
                parameters.Add("Password", password, DbType.String);
                return await connection.QuerySingleOrDefaultAsync<UserModel>(query, parameters);
            }
        }
    }
}
