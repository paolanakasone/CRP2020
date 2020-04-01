using System;
using System.Collections.Generic;
using System.Text;

namespace COOP2020.Domain.AuthenticationAggregate.Queries
{
    public class ModuleVM
    {
        public int IdModulo { get; set; }
        public string Nombre { get; set; }
        public int IdModuloPadre { get; set; }
    }
}
