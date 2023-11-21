using EquipoProgramacionEPF.Datos;
using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Servicios
{
    public interface IServicio
    {
        bool Crear(Partidos partido);

        List<Jugador> GetJugadores();
         List<Jugador> GetJugadores2();

        DataTable GetDT(string nombreSP);

        bool CrearJugador(Jugador oJugador);
        List<Pais> GetPais();
        List<Club> GetClub();
        List<Posicion> GetPosicion();
        List<Temporada> GetTemporada();

        string VerificarUsuario(string usuario, string pass);
        bool CrearUsuario(Usuario oUsuario);

        List<Jugador> TraerJugadores(List<Parametro> lParams, string nombreSP);
        bool ActualizarJugador(Jugador oJugador);
        bool BorrarJugador(int nroJugador);
        Jugador TraerJugador(int nroJugador);
        //int CrearClub(SqlConnection connection, SqlTransaction t, Club club);
    }
}
