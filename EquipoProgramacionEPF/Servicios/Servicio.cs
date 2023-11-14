using EquipoProgramacionEPF.Datos.Implementacion;
using EquipoProgramacionEPF.Datos.Interfaz;
using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Servicios
{
    internal class Servicio : IServicio
    {
        private IDaoPartidoEstadistica DAO;

        public Servicio()
        {
            DAO = new PartidoEstadisticaDAO();
        }
        public int Crear(Partidos partido)
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
    }
}
