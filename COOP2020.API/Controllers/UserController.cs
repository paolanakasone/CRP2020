using COOP2020.Domain.Queries.CRP;
using COOP2020.Infrastructure.Shared.Enums;
using Microsoft.AspNetCore.Mvc;
using RestSharp;
using System.Threading.Tasks;

namespace COOP2020.API.Controllers
{
    [Route("api/user")]
    [ApiController]
    public class UserController : ControllerBase
    {
        public UserController()
        {
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> Get(string id, int type)
        {
            var client = new RestClient("https://localhost:44388");
            if (type == (int)UserCRPEnum.Administrator)
            {
                var request = new RestRequest("api/administrator", DataFormat.Json);
                request.AddQueryParameter("dni", id);
                var queryResult = (await client.ExecuteAsync<AdministratorVM>(request)).Data;
                return Ok(queryResult);
            }
            else if (type == (int)UserCRPEnum.Affiliate)
            {
                var request = new RestRequest("api/affiliate", DataFormat.Json);
                request.AddQueryParameter("dni", id);
                var queryResult = (await client.ExecuteAsync<AffiliateVM>(request)).Data;
                return Ok(queryResult);
            }
            else if (type == (int)UserCRPEnum.Doctor)
            {
                var request = new RestRequest("api/doctor", DataFormat.Json);
                request.AddQueryParameter("cmp", id);
                var queryResult = (await client.ExecuteAsync<DoctorVM>(request)).Data;
                return Ok(queryResult);
            }
            else
                return BadRequest();
        }
    }
}