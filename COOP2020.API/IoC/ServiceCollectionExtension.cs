using COOP2020.Domain.AuthenticationAggregate;
using COOP2020.Infrastructure.Repository;
using COOP2020.Infrastructure.Services;
using Microsoft.Extensions.DependencyInjection;

namespace COOP2020.API.IoC
{
    public static class ServiceCollectionExtension
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddScoped<IAuthenticationService, AuthenticationService>();
        }

        public static void RegisterRepositories(this IServiceCollection services)
        {
            services.AddScoped<IAuthenticationRepository, AuthenticationRepository>();
        }
    }
}
