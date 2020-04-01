using AutoMapper;
using COOP2020.Domain.AuthenticationAggregate;
using COOP2020.Domain.AuthenticationAggregate.Commands;
using COOP2020.Domain.AuthenticationAggregate.Queries;
using COOP2020.Infrastructure.Shared.Extensions;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;

namespace COOP2020.Infrastructure.Services
{
    public class AuthenticationService : IAuthenticationService
    {
        private readonly IAuthenticationRepository _authenticationRepository;
        private readonly IMapper _mapper;
        public AuthenticationService(IAuthenticationRepository authenticationRepository, IMapper mapper)
        {
            _authenticationRepository = authenticationRepository;
            _mapper = mapper;
        }
        public Task<UserVM> CreateUser(UserToCreateVM user)
        {
            throw new NotImplementedException();
        }

        public async Task<List<ModuleVM>> GetModulesByUser(string hkey)
        {
            var modulesFromRepo = await _authenticationRepository.GetModulesByUser(hkey);
            return _mapper.Map<List<ModuleVM>>(modulesFromRepo);
        }

        public async Task<List<RoleVM>> GetRoles()
        {
            var roles = await _authenticationRepository.GetRoles();
            return _mapper.Map<List<RoleVM>>(roles);
        }

        public async Task<UserVM> Login(UserLoginRequestVM user)
        {
            var userFromRepo = await _authenticationRepository.GetUserByUsername(user.Username);
            if (userFromRepo == null) return default;
            var success = user.Password.VerifyPasswordHash(userFromRepo.PasswordSalt, userFromRepo.PasswordHash);
            if (!success) return default;
            return _mapper.Map<UserVM>(userFromRepo);
        }
    }
}
