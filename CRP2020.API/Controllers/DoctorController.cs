using CRP2020.API.Helpers;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace CRP2020.API.Controllers
{
    [Route("api/doctor")]
    [ApiController]
    public class DoctorController : ControllerBase
    {
        [HttpGet]
        public async Task<IActionResult> Get(string cmp)
        {
            var doctors = FakeDataGenerator.GetDoctors();
            var doctor = doctors.FirstOrDefault(x => x.CMP == cmp);
            return Ok(doctor);
        }
    }
}