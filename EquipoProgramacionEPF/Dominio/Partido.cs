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

        public int Local { get; set; }
        public int Visitante { get; set; }
        public int Temporada { get; set; }
        public Partidos()
        {
            FechaPartido = DateTime.Now;
            GolesLocal = 0;
            GolesVisitante = 0;
            ClubLocal = new Club();
            ClubVisitante = new Club();
            lEstadisticaPartidos = new List<EstadisticaPartido>();
            IdPartido = 0;
        }

        public Partidos(DateTime fec, int GolLoc,int GolVis, int  loc, int vis, int tem)
        {
            fec = FechaPartido;
            GolLoc = GolesLocal;
            GolVis = GolesVisitante;
            loc = Local;
            vis = Visitante;
            tem = Temporada;
            
            
        }

        public void AddEstadistica(EstadisticaPartido estadistica)
        {
            lEstadisticaPartidos.Add(estadistica);
        }

        public void RemoveEstadistica(int index)
        {
            lEstadisticaPartidos.RemoveAt(index);
        }
    }
}
