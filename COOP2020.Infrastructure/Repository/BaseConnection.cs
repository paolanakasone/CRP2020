using System.Data;

namespace COOP2020.Infrastructure.Repository
{
    public class BaseConnection
    {
        protected readonly IDbConnection _dbConnection;
        public BaseConnection(IDbConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }
    }
}
