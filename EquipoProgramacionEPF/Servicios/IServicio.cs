using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Servicios
{
    public interface IServicio
    {
        int Crear(Partidos partido);

        List<Jugador> GetJugadores();
         List<Jugador> GetJugadores2();

        DataTable GetDT(string nombreSP);

        bool CrearJugador(Jugador oJugador);
        List<Pais> GetPais();
        List<Club> GetClub();
        List<Posicion> GetPosicion();
        List<Temporada> GetTemporada();

        
    }
}
