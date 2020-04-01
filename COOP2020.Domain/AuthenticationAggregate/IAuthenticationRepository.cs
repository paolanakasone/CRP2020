using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace COOP2020.Domain.AuthenticationAggregate
{
    public interface IAuthenticationRepository
    {
        Task<User> CreateUser(User usuario);
        Task<User> GetUserByUsername(string username);
        Task<List<Module>> GetModulesByUser(string hkey);
        Task<List<Role>> GetRoles();
    }
}
