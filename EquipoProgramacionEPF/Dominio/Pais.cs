using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Pais
    {
        public int IdPais { get; set; }
        public string nPais { get; set; }

        public Pais()
        {
            IdPais = 0;
            nPais = string.Empty;
        }

        public Pais(int idPais, string nPais)
        {
            IdPais = idPais;
            this.nPais = nPais;
        }

        public override string ToString()
        {
            return nPais;
        }
    }
}
