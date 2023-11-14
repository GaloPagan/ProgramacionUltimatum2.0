using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EquipoProgramacionEPF.Dominio;
using EquipoProgramacionEPF.Datos.Interfaz;

namespace EquipoProgramacionEPF.Datos.Implementacion
{
    internal class PartidoEstadisticaDAO : IDaoPartidoEstadistica
    {
        
        
        public int Crear(Partidos partidos)
        {
            SqlConnection connection = DBHelperDao.getInstance().GetConnection();
            SqlTransaction t = null;
            int PartidoNro = 0;

            try
            {
                connection.Open();
                t = connection.BeginTransaction();
                SqlCommand sqlCommand = new SqlCommand("InsertarPartido", connection, t);
                sqlCommand.CommandType = CommandType.StoredProcedure;

                sqlCommand.Parameters.AddWithValue("@Fecha", partidos.FechaPartido);
                sqlCommand.Parameters.AddWithValue("@EquipoLocal", partidos.Local);
                sqlCommand.Parameters.AddWithValue("@Adversario", partidos.Visitante);
                sqlCommand.Parameters.AddWithValue("@id_temporada", partidos.TemporadaPartido.AgnoInicio);
                sqlCommand.Parameters.AddWithValue("@goles_local", partidos.GolesLocal);
                sqlCommand.Parameters.AddWithValue("@goles_visitantes", partidos.GolesVisitante);

                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@IDPartido";
                parameter.SqlDbType = SqlDbType.Int;
                parameter.Direction = ParameterDirection.Output;
                sqlCommand.Parameters.Add(parameter);

                sqlCommand.ExecuteNonQuery();

                PartidoNro = Convert.ToInt32(parameter.Value);


                int NroEstadisticaPartido = 1;
                SqlCommand cmdEstadistica;

                foreach (EstadisticaPartido e in partidos.lEstadisticaPartidos)
                {
                    cmdEstadistica = new SqlCommand("InsertarEstadistica", connection, t);
                    cmdEstadistica.CommandType = CommandType.StoredProcedure;
                    cmdEstadistica.Parameters.AddWithValue("@IDPartido", PartidoNro);
                    cmdEstadistica.Parameters.AddWithValue("@IDJUGADOR", e.Jugador.IdJugador);
                    cmdEstadistica.Parameters.AddWithValue("@goles", partidos.IdPartido);
                    cmdEstadistica.Parameters.AddWithValue("@asistencias", partidos.IdPartido);
                    cmdEstadistica.Parameters.AddWithValue("@amarillas", partidos.IdPartido);
                    cmdEstadistica.Parameters.AddWithValue("@rojas", partidos.IdPartido);
                    cmdEstadistica.Parameters.AddWithValue("@TiempoJugado", partidos.IdPartido);
                    cmdEstadistica.Parameters.AddWithValue("@ID_estadistica", NroEstadisticaPartido);

                    cmdEstadistica.ExecuteNonQuery();
                    NroEstadisticaPartido++;

                }
                t.Commit();
            }
            catch
            {
                if (t != null) t.Rollback();
            }
            finally
            {
                if (connection != null && connection.State == ConnectionState.Open) { connection.Close(); }
            }
            return PartidoNro;
        }

        public DataTable GetDT(string nombreSP)
        {
            return DBHelperDao.getInstance().ConsultarSP(nombreSP);
        }

        public List<Jugador> GetJugadores()
        {
            List<Jugador> lJugadores = new List<Jugador>();

            DataTable dt = DBHelperDao.getInstance().ConsultarSP("ConsultarJugadores");
            foreach (DataRow dr in dt.Rows)
            {
                int Id = Convert.ToInt32(dr["IDjugador"]);
                string nom = (dr["nombre"]).ToString();
                string ape = (dr["apellido"]).ToString();
                int num = Convert.ToInt32(dr["NumeroCamiseta"]);



                Jugador jugador = new Jugador(Id, nom, ape, num);
                lJugadores.Add(jugador);

            }
            return lJugadores;
        }

        public bool CrearJugador(Jugador oJugador)
        {
            bool resultado = true;
            SqlTransaction transaccion = null;
            SqlConnection conexion = DBHelperDao.getInstance().GetConnection();
            try
            {
                conexion.Open();
                transaccion = conexion.BeginTransaction();
                SqlCommand comando = new SqlCommand("SP_INSERTAR_JUGADOR", conexion, transaccion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Nombre", oJugador.Nombre);
                comando.Parameters.AddWithValue("@Apellido", oJugador.Apellido);
                comando.Parameters.AddWithValue("@Club", oJugador.club.Id);
                comando.Parameters.AddWithValue("@Posicion", oJugador.posicion.idPosicion);
                comando.Parameters.AddWithValue("@NumeroCamiseta", oJugador.Numero);
                comando.Parameters.AddWithValue("@Nacionalidad", oJugador.pais.IdPais);
                comando.Parameters.AddWithValue("@FechaNacimiento", oJugador.FechaNacimiento);
                comando.Parameters.AddWithValue("@Altura", oJugador.Altura);
                comando.Parameters.AddWithValue("@Peso", oJugador.Peso);
                comando.ExecuteNonQuery();
                transaccion.Commit();

            }
            catch
            {
                if (transaccion != null)
                {
                    transaccion.Rollback();
                    resultado = false;
                }
            }
            finally
            {
                if (conexion != null) conexion.Close();
            }
            return resultado;
        }

        public List<Pais> GetPais()
        {
            List<Pais> lPaises = new List<Pais>();
            DataTable tabla = DBHelperDao.getInstance().ConsultarSP("SP_CONSULTAR_PAIS");
            foreach (DataRow fila in tabla.Rows)
            {
                int codigo = int.Parse(fila["id_pais"].ToString());
                string nombre = fila["nombrePais"].ToString();
                Pais c = new Pais(codigo, nombre);
                lPaises.Add(c);
            }
            return lPaises;
        }

        public List<Posicion> GetPosicion()
        {
            List<Posicion> lPosiciones = new List<Posicion>();
            DataTable tabla = DBHelperDao.getInstance().ConsultarSP("SP_CONSULTAR_POSICION");
            foreach (DataRow fila in tabla.Rows)
            {
                int codigo = int.Parse(fila["IDPosicion"].ToString());
                string nombre = fila["NombrePosicion"].ToString();
                Posicion c = new Posicion(codigo, nombre);
                lPosiciones.Add(c);
            }
            return lPosiciones;
        }

        public List<Club> GetClub()
        {
            List<Club> lClubes = new List<Club>();
            DataTable tabla = DBHelperDao.getInstance().ConsultarSP("SP_CONSULTAR_CLUB");
            foreach (DataRow fila in tabla.Rows)
            {
                int codigo = int.Parse(fila["IDClub"].ToString());
                string nombre = fila["NombreClub"].ToString();
                Club c = new Club(codigo, nombre);
                lClubes.Add(c);
            }
            return lClubes;
        }

        public List<Temporada> GetTemporada()
        {
            List<Temporada> lTemporadas = new List<Temporada>();
            DataTable tabla = DBHelperDao.getInstance().ConsultarSP("SP_CONSULTAR_Temporada");
            foreach (DataRow fila in tabla.Rows)
            {
                int codigo = int.Parse(fila["IDTemporada"].ToString());
                int temporada = int.Parse(fila["AnioInicio"].ToString());
                Temporada t = new Temporada(codigo, temporada);
                lTemporadas.Add(t);
            }
            return lTemporadas;
        }

        public List<Jugador> GetJugadores2()
        {
            List<Jugador> lJugadores = new List<Jugador>();

            DataTable dt = DBHelperDao.getInstance().ConsultarSP("ConsultarJugadores");
            foreach (DataRow dr in dt.Rows)
            {
                int Id = int.Parse(dr["idjugador"].ToString());
                string nom = (dr["nombre"]).ToString();




                Jugador jugador = new Jugador(Id, nom);
                lJugadores.Add(jugador);

            }
            return lJugadores;
        }

        public List<Club> GetClub2()
        {
            List<Club> lClubes = new List<Club>();
            DataTable tabla = DBHelperDao.getInstance().ConsultarSP("SP_CONSULTAR_CLUB");
            foreach (DataRow fila in tabla.Rows)
            {
                int codigo = int.Parse(fila["IDClub"].ToString());
                string nombre = fila["NombreClub"].ToString();
                Club c = new Club(codigo, nombre);
                lClubes.Add(c);
            }
            return lClubes;
        }
        public bool Actualizar(Jugador oJugador)
        {
            bool resultado = true;
            SqlTransaction t = null;
            SqlConnection conn = DBHelperDao.getInstance().GetConnection();
            conn.Open();
            SqlCommand comando = new SqlCommand("SP_ACTUALIZAR_JUGADOR", conn, t);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IDJugador", oJugador.IdJugador);
            comando.Parameters.AddWithValue("@Nombre", oJugador.Nombre);
            comando.Parameters.AddWithValue("@Apellido", oJugador.Apellido);
            comando.Parameters.AddWithValue("@Club", oJugador.club.Id);
            comando.Parameters.AddWithValue("@Posicion", oJugador.posicion.idPosicion);
            comando.Parameters.AddWithValue("@NumeroCamiseta", oJugador.Numero);
            comando.Parameters.AddWithValue("@FechaNacimiento", oJugador.FechaNacimiento);
            comando.Parameters.AddWithValue("@Altura", oJugador.Altura);
            comando.Parameters.AddWithValue("@Peso", oJugador.Peso);
            comando.Parameters.Add("IDJugador", SqlDbType.Int);
            comando.ExecuteNonQuery();
            conn.Close();
            return resultado;
        }
        public bool EliminarPartido(int partido)
        {
            bool resultado = false;
            SqlConnection conn = DBHelperDao.getInstance().GetConnection();
            SqlCommand command = new SqlCommand("SP_Borrar_Partidos", conn);
            command.CommandType = CommandType.StoredProcedure;


            command.Parameters.Add("@IDPartido", SqlDbType.Int).Value = partido;

            //escribir codigo para borrar partidos

            return resultado;
        }
        


    }
}

