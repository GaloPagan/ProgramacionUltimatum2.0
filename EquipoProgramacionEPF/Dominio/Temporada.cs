using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Temporada
    {
        
        
        public int idTemporada { get; set; }
        public int Categoria { get; set; }
        public int AnioInicio { get; set; }
        public int AnioFin { get; set; }
        public int Torneo { get; set; }
        public Temporada()
        {

        }
        public Temporada(int categoria, int agnoInicio, int agnoFin, int torneo)
        {
            Categoria = categoria;
            AnioInicio = agnoInicio;
            AnioFin = agnoFin;
            Torneo = torneo;
        }

        public Temporada(int codigo, int aniInicio, int anioFin, int torneo, int categoria)
        {
            this.idTemporada = codigo;
            this.AnioInicio=aniInicio;
            this.AnioFin = anioFin;
            this.Torneo = torneo;
            this.Categoria = categoria;
        }
        public override string ToString()
        {
            return AnioInicio.ToString();
        }
    }
}
