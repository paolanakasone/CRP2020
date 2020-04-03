using COOP2020.Domain.AuthenticationAggregate;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace COOP2020.Infrastructure.Repository
{
    public class AuthenticationRepository : BaseConnection, IAuthenticationRepository
    {
        public AuthenticationRepository(IDbConnection dbConnection) : base(dbConnection)
        {
        }

        public async Task<User> CreateUser(User usuario)
        {
            using (var conn = _dbConnection)
            {
                conn.Open();
                var result = await conn.QueryAsync<User>("CreateUser",
                    new
                    {
                        P_Hkey = usuario.Hkey,
                        P_Alias = usuario.Alias,
                        P_PasswordSalt = usuario.PasswordSalt,
                        P_PasswordHash = usuario.PasswordHash,
                        P_IdRol = usuario.IdRol
                    }, commandType: CommandType.StoredProcedure);
                return result.FirstOrDefault();
            }
        }

        public async Task<List<Domain.AuthenticationAggregate.Module>> GetModulesByUser(string hkey)
        {
            using (var conn = _dbConnection)
            {
                conn.Open();
                var result = await conn.QueryAsync<Domain.AuthenticationAggregate.Module>("GetModulesByUsername",
                    new { Hkey = hkey }, commandType: CommandType.StoredProcedure);
                return result.ToList();
            }
        }

        public async Task<List<Role>> GetRoles()
        {
            using (var conn = _dbConnection)
            {
                conn.Open();
                var result = await conn.QueryAsync<Role>("GetRoles",
                    commandType: CommandType.StoredProcedure);
                return result.ToList();
            }
        }

        public async Task<User> GetUserByUsername(string username)
        {
            using (var conn = _dbConnection)
            {
                conn.Open();
                var result = await conn.QueryAsync<User>("GetUserByUsername",
                    new { Username = username }, commandType: CommandType.StoredProcedure);
                return result.FirstOrDefault();
            }

        }

    }
}
