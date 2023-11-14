using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Datos.Interfaz
{
    internal interface IDaoPartidoEstadistica
    {
        int Crear(Partidos compromiso);

        List<Jugador> GetJugadores();
        List<Jugador> GetJugadores2();
        DataTable GetDT(string nombreSP);
        bool CrearJugador(Jugador oJugador);
        List<Pais> GetPais();
        List<Club> GetClub();
        List<Posicion> GetPosicion();

        List<Temporada> GetTemporada();
        bool Actualizar(Jugador oJugador);
        bool EliminarPartido(Partidos oPartido);
    }
}
