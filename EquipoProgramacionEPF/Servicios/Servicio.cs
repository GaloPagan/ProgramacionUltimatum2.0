using EquipoProgramacionEPF.Datos;
using EquipoProgramacionEPF.Datos.Implementacion;
using EquipoProgramacionEPF.Datos.Interfaz;
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
    internal class Servicio : IServicio
    {
        private IDaoPartidoEstadistica DAO;
        private IUsuarioDAO usuarioDAO;

        public Servicio()
        {
            DAO = new PartidoEstadisticaDAO();
            usuarioDAO = new UsuarioDAO();
        }
        public bool Crear(Partidos partido)
        {
            return DAO.Crear(partido);
        }

        public DataTable GetDT(string nombreSP)
        {
            return DAO.GetDT(nombreSP);
        }

        public List<Jugador> GetJugadores()
        {
            return DAO.GetJugadores();
        }
        public List<Jugador> GetJugadores2()
        {
            return DAO.GetJugadores2();
        }
        public bool CrearJugador(Jugador oJugador)
        {
            return DAO.CrearJugador(oJugador);
        }
        public List<Pais> GetPais()
        {
            return DAO.GetPais();
        }
        public List<Club> GetClub()
        {
            return DAO.GetClub();
        }
        public List<Posicion> GetPosicion()
        {
            return DAO.GetPosicion();
        }

        public List<Temporada> GetTemporada() 
        {
            return DAO.GetTemporada();
        }

        public string VerificarUsuario(string usuario, string pass)
        {
            return usuarioDAO.ControlarLogin(usuario, pass);
        }
        public bool CrearUsuario(Usuario oUsuario)
        {
            return usuarioDAO.CreacionUsuario(oUsuario);
        }
        public List<Jugador> TraerJugadores(List<Parametro> lParams, string nombreSP)
        {
            return DAO.TraerJugadores(lParams, nombreSP);
        }
        public bool ActualizarJugador(Jugador oJugador)
        {
            return DAO.ActualizarJugador(oJugador);
        }
        public bool BorrarJugador(int nroJugador)
        {
            return DAO.BorrarJugador(nroJugador);
        }
        public Jugador TraerJugador(int nroJugador)
        {
            return DAO.TraerJugador(nroJugador);
        }

        //public int CrearClub(SqlConnection connection, SqlTransaction t, Club club)
        //{
        //    return DAO.CrearClub(connection, t, club);
        //}
    }
}
