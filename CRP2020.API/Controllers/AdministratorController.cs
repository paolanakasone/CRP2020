using CRP2020.API.Helpers;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace CRP2020.API.Controllers
{
    [Route("api/administrator")]
    [ApiController]
    public class AdministratorController : ControllerBase
    {
        [HttpGet]
        public async Task<IActionResult> Get(string dni)
        {
            var administrators = FakeDataGenerator.GetAdministrators();
            var administrator = administrators.FirstOrDefault(x => x.DNI == dni);
            return Ok(administrator);
        }
    }
}