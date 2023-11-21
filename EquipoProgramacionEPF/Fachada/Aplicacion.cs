using EquipoProgramacionEPF.Datos.Implementacion;
using EquipoProgramacionEPF.Datos.Interfaz;
using EquipoProgramacionEPF.Dominio;
using EquipoProgramacionEPF.Fachada;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Fachada
{
    public class Aplicacion : IAplicacion
    {
        IDaoPartidoEstadistica dao;
        public Aplicacion() 
        {
            dao = new PartidoEstadisticaDAO();
        }
        public List<EstadisticaPartido> GetEstadisticasPartido()
        {
            throw new NotImplementedException();
        }

        public List<Jugador> GetJugadores()
        {
            return dao.GetJugadores();
        }

        public bool SavePartido(Partidos oPartido)
        {
            return dao.Crear(oPartido);
        }
        public bool ActualizarJugador(Jugador oJugador)
        {
            return dao.Actualizar(oJugador);
        }
        public bool DeletePartido(Partidos oPartido)
        {
            return dao.EliminarPartido(oPartido);
        }
    }
}
