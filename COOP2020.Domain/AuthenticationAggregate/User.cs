using System;
using System.Collections.Generic;
using System.Text;

namespace COOP2020.Domain.AuthenticationAggregate
{
    public class User
    {     
        public int IdUsuario { get; set; }
        public string Hkey { get; set; }
        public string Alias { get; set; }
        public byte[] PasswordSalt { get; set; }
        public byte[] PasswordHash { get; set; }
        public int IdRol { get; set; }

    }
}
