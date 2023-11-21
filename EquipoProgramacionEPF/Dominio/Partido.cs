using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Partidos
    {
        public int IdPartido { get; set; }
        public DateTime FechaPartido { get; set; }
        public int GolesLocal { get; set; }
        public int GolesVisitante { get; set; }
        public Club ClubLocal { get; set; }
        public Club ClubVisitante { get; set; }
        public Temporada TemporadaPartido { get; set; }
     
        public List<EstadisticaPartido> lEstadisticaPartidos { get; set; }

       
        public Partidos()
        {
            lEstadisticaPartidos = new List<EstadisticaPartido>();
            TemporadaPartido = new Temporada();
            ClubLocal = new Club();
            ClubVisitante = new Club();
        }
        public Partidos(Temporada tem, Club loc, Club vis, DateTime fec, int gLoc, int gVis)
        {
            lEstadisticaPartidos=new List<EstadisticaPartido>();
            TemporadaPartido = tem;
            ClubLocal =loc;
            ClubVisitante =vis;
            FechaPartido = fec;
            GolesLocal = gLoc;
            GolesVisitante = gVis;



        }
        public void AddEstadistica(EstadisticaPartido estadistica)
        {
            lEstadisticaPartidos.Add(estadistica);
        }

        public void RemoveEstadistica(int index)
        {
            lEstadisticaPartidos.RemoveAt(index);
        }

        public override string ToString()
        {
            return IdPartido.ToString();
        }
    }
}
