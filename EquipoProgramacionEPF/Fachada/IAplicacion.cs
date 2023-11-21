using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Fachada
{
    public interface IAplicacion
    {
        List<EstadisticaPartido> GetEstadisticasPartido();
        List<Jugador> GetJugadores();
        bool SavePartido(Partidos oPartido);
        bool ActualizarJugador(Jugador oJugador);
        bool DeletePartido(Partidos oPartido);
        List<Pais> GetPaises();
    }
}
