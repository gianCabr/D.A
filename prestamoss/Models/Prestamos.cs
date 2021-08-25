using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prestamoss.Models
{
    public class Prestamos
    {
        public int id { get; set; }
        public long Capital { get; set; }
        public decimal Interes { get; set; }
        public decimal Periodo { get; set; }
        public int ClientesId { get; set; }
        public virtual Clientes Clientes { get; set; }
    }
}