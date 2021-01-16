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
    public class AccountTypeRepository
    {
        public static async Task<int> InsertAccountTypeAsync(AccountTypeModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into account_types (AccountType) values (upper(@AccountType))";
                var parameters = new DynamicParameters();
                parameters.Add("AccountType", model.AccountType, DbType.String);
                return await connection.ExecuteAsync(query, parameters);
            }
        }
    }
}
