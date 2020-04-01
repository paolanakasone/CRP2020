using System;
using System.Collections.Generic;
using System.Text;

namespace COOP2020.Domain.AuthenticationAggregate.Commands
{
    public class UserLoginRequestVM
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }
}
