using COOP2020.Domain.AuthenticationAggregate.Commands;
using COOP2020.Domain.AuthenticationAggregate.Queries;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace COOP2020.Domain.AuthenticationAggregate
{
    public interface IAuthenticationService
    {
        Task<UserCreatedVM> CreateUser(UserToCreateVM user);
        Task<UserVM> Login(UserLoginRequestVM user);
        Task<List<ModuleVM>> GetModulesByUser(string hkey);
        Task<List<RoleVM>> GetRoles();
    }
}
