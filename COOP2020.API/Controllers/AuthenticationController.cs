using COOP2020.Domain.AuthenticationAggregate;
using COOP2020.Domain.AuthenticationAggregate.Commands;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace COOP2020.API.Controllers
{
    [Authorize]
    [Route("api/auth")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        private readonly IAuthenticationService _authenticationService;
        private readonly IConfiguration _configuration;
        public AuthenticationController(IAuthenticationService authenticationService, IConfiguration configuration)
        {
            _authenticationService = authenticationService;
            _configuration = configuration;
        }

        [HttpGet("{hkey}/modules")]
        public async Task<IActionResult> GetModulesByUser(string hkey)
        {
            var modules = await _authenticationService.GetModulesByUser(hkey);
            return Ok(modules);
        }


        [HttpGet("roles")]
        public async Task<IActionResult> GetRoles()
        {
            var roles = await _authenticationService.GetRoles();
            return Ok(roles);
        }

        [AllowAnonymous]
        [HttpPost("create")]
        public async Task<IActionResult> CreateUser([FromBody] UserToCreateVM userToCreateVM)
        {
            var result = await _authenticationService.CreateUser(userToCreateVM);
            return Ok(result);
        }

        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] UserLoginRequestVM userLoginRequestVM)
        {
            var result = await _authenticationService.Login(userLoginRequestVM);
            if (result == null)
                return Unauthorized();
            var claims = new[]
            {
                new Claim(ClaimTypes.NameIdentifier, result.Hkey),
                new Claim(ClaimTypes.Name, result.Alias),
                new Claim(ClaimTypes.Role, result.IdRol.ToString())
            };

            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration.GetSection("AppSettings:Token").Value));

            var credentials = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.Now.AddDays(1),
                SigningCredentials = credentials
            };

            var tokenHandler = new JwtSecurityTokenHandler();

            var token = tokenHandler.CreateToken(tokenDescriptor);
            return Ok(new { token = tokenHandler.WriteToken(token) });
        }
    }
}