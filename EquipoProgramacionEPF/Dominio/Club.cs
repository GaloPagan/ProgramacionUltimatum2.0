using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Club
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Ubicacion { get; set; }
        public string Estadio { get; set; }
        public DateTime FechaFundacion { get; set; }


        public Club()
        {
            Id = 0;
            this.Nombre = string.Empty;
            Ubicacion = 0;
            Estadio = string.Empty;
            FechaFundacion = DateTime.Today;
        }

        public Club(int id,string Nombre)
        {
            Id = id;
            this.Nombre = Nombre;
        }
      
        public Club(int id, string Nombre, int ubicacion, string estadio, DateTime fechaFundacion)
        {
            Id = id;
            this.Nombre = Nombre;
            Ubicacion= ubicacion;
            Estadio = estadio;
            FechaFundacion= fechaFundacion;
        }

        public override string ToString()
        {
            return Nombre;
        }
    }
}
