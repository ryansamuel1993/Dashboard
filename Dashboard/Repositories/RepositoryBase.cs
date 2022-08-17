using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Dashboard.Repositories
{
    public abstract class RepositoryBase
    {
        private readonly string _connectionString;
        public RepositoryBase()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }
        public static object GetValueByName(
            SqlDataReader reader, string columnName)
        {
            object columnValue;

                try
                {
                    int columnOrdinal = reader.GetOrdinal(columnName);
                    columnValue = reader.GetValue(columnOrdinal);
                }
                catch (ArgumentException ex)
                {
                    // Throw all other errors back out to the caller.
                    columnValue = null;
                }
                return columnValue;
        }
    }
}
