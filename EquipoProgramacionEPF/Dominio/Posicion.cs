using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Posicion
    {
        public int idPosicion { get; set; }
        public string nPosicion { get; set; }

        public Posicion()
        {
            idPosicion = 0;
            nPosicion = string.Empty;
        }

        public Posicion(int idPosicion, string nPosicion)
        {
            this.idPosicion = idPosicion;
            this.nPosicion = nPosicion;
        }
        public override string ToString()
        {
            return nPosicion;
        }
    }
}
