using System;
using System.Collections.Generic;
using System.Text;

namespace COOP2020.Domain.AuthenticationAggregate.Queries
{
    public class UserVM
    {
        public string Hkey { get; set; }
        public string Alias { get; set; }
        public int IdRol { get; set; }
    }
}
