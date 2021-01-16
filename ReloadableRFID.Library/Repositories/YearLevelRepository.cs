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
    public class YearLevelRepository
    {
        public static async Task<int> InsertYearLevelAsync(YearLevelModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into year_levels (YearLevel) values (upper(@YearLevel))";
                var parameters = new DynamicParameters();
                parameters.Add("YearLevel", model.YearLevel, DbType.String);
                return await connection.ExecuteAsync(query, parameters);
            }
        }

        public static async Task<IEnumerable<YearLevelModel>> GetYearLevelsAsync()
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from year_levels order by YearLevel";
                return await connection.QueryAsync<YearLevelModel>(query);
            }
        }
    }
}
