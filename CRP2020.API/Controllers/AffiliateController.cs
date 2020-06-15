using CRP2020.API.Helpers;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace CRP2020.API.Controllers
{
    [Route("api/affiliate")]
    [ApiController]
    public class AffiliateController : ControllerBase
    {
        [HttpGet]
        public async Task<IActionResult> Get(string dni)
        {
            var affiliates = FakeDataGenerator.GetAffiliates();
            var affiliate = affiliates.FirstOrDefault(x => x.DNI == dni);
            return Ok(affiliate);
        }
    }
}