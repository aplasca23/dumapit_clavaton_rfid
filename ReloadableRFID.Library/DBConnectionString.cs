using System.Configuration;
using System.Data;

namespace ReloadableRFID.Library
{
    public class DBConnectionString
    {
        public static string GetConnectionString(string connectionName = "RFID_DB")
        {
            return ConfigurationManager.ConnectionStrings[connectionName].ConnectionString;
        }
    }
}
