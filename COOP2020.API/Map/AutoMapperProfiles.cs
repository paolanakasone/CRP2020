using AutoMapper;
using COOP2020.Domain.AuthenticationAggregate;
using COOP2020.Domain.AuthenticationAggregate.Commands;
using COOP2020.Domain.AuthenticationAggregate.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace COOP2020.API.Map
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMapAuthentication();
        }

        private void CreateMapAuthentication()
        {
            CreateMap<User, UserVM>();
            CreateMap<User, UserCreatedVM>();
            CreateMap<UserToCreateVM, User>();
            CreateMap<Module, ModuleVM>();
            CreateMap<Role, RoleVM>();
        }
    }
}
