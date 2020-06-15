using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using COOP2020.Domain.Queries.CRP;
using CRP2020.API.Helpers;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace CRP2020.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public async Task<IActionResult>  Get()
        {
            var x = FakeDataGenerator.GetAdministrators();
            var y = FakeDataGenerator.GetAffiliates();
            var z = FakeDataGenerator.GetDoctors();
            List<object> persons = new List<object>();
            foreach (var item in x)
                persons.Add(new { item, type = "Admnistrator" });
            foreach (var item in y)
                persons.Add(new { item, type = "Affiliate" });
            foreach (var item in z)
                persons.Add(new { item, type = "Doctors" });
            return Ok(persons);
        }
    }
}
