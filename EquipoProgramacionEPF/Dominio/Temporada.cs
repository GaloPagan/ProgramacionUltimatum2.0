using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Temporada
    {
        public int codigo {  get; set; }
        public int temporada { get; set; }

        public int Categoria { get; set; }
        public int AgnoInicio { get; set; }
        public int AgnoFin { get; set; }
        public int Torneo { get; set; }
        public Temporada()
        {

        }
        public Temporada(int categoria, int agnoInicio, int agnoFin, int torneo)
        {
            Categoria = categoria;
            AgnoInicio = agnoInicio;
            AgnoFin = agnoFin;
            Torneo = torneo;
        }

        public Temporada(int codigo, int temporada)
        {
            this.codigo = codigo;
            int anioInicio;
        }
        public override string ToString()
        {
            return codigo+" "+AgnoInicio.ToString();
        }
    }
}
