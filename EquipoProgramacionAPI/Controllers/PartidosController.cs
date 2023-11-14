using EquipoProgramacionEPF.Dominio;
using EquipoProgramacionEPF.Fachada;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EquipoProgramacionAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PartidosController : ControllerBase
    {
        private IAplicacion app;

        public PartidosController()
        {
            app = new Aplicacion();
        }

        [HttpGet("/jugadores")]
        public IActionResult GetJugadores(Jugador oJugador)
        {
            List<Jugador> lst = null;
            try
            {
                lst = app.GetJugadores();
                return Ok(lst);
            }
            catch (Exception ex) 
            { 
                return StatusCode(500, "Error interno, intente luego");
            }
        }
        [HttpPost("/partidos")]
        public IActionResult Post(Partidos oPartido)
        {
            try
            {
                if (oPartido == null)
                {
                    return BadRequest("No paso ningún dato del jugador");
                }

                return Ok(app.SavePartido(oPartido));
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno, intente luego");
            }
        }
        [HttpPut("/jugador")] 
        public IActionResult PutJugador(Jugador oJugador)
        {
            try
            {
                if (oJugador == null)
                {
                    return BadRequest("No paso ningún dato del jugador");
                }

                return Ok(app.ActualizarJugador(oJugador));
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno, intente luego");
            }
        }
        [HttpDelete("/partidos")] 
        public IActionResult DeletePartidos(Partidos oPartido)
        {
            try
            {
                if (oPartido == null)
                {
                    return BadRequest("No paso ningún dato del jugador");
                }

                return Ok(app.DeletePartido(oPartido));
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Error interno, intente luego");
            }
        }
    }
}