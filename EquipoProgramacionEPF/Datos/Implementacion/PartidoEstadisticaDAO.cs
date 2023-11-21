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


        //public bool Crear(Partidos partidos)
        //{
        //    SqlConnection connection = DBHelperDao.getInstance().GetConnection();
        //    SqlTransaction t = null;
        //    bool aux = true;
        //    Club club=new Club();
        //    Temporada temporada = new Temporada();

        //    //try
        //    //{
        //        connection.Open();
        //        t = connection.BeginTransaction();
        //        SqlCommand sqlCommand = new SqlCommand("SP_InsertarPartido", connection, t);
        //        sqlCommand.CommandType = CommandType.StoredProcedure;


        //        //SqlParameter parameter = new SqlParameter("@SP_PROXIMO_ID", SqlDbType.Int);

        //        //    parameter.Direction = ParameterDirection.Output;
        //        //    sqlCommand.Parameters.Add(parameter);





        //      //sqlCommand.Parameters.AddWithValue("@IDPartido", partidos.IdPartido);

        //        sqlCommand.Parameters.AddWithValue("@Fecha", partidos.FechaPartido);

        //    sqlCommand.Parameters.AddWithValue("@Adversario", partidos.ClubVisitante.Id);
        //    sqlCommand.Parameters.AddWithValue("@equipoLocal", partidos.ClubLocal.Id);
        //    sqlCommand.Parameters.AddWithValue("@id_temporada", partidos.TemporadaPartido.idTemporada);
        //    sqlCommand.Parameters.AddWithValue("@goles_local", partidos.GolesLocal);
        //    sqlCommand.Parameters.AddWithValue("@goles_visitantes", partidos.GolesVisitante);
        //    sqlCommand.Parameters.AddWithValue("@Adversario", partidos.ClubVisitante.Id);
        //    sqlCommand.Parameters.AddWithValue("@equipoLocal", partidos.ClubLocal.Id);



        //    sqlCommand.ExecuteNonQuery();



        //        //int NroPartido=(int)parameter.Value;
        //        int i = 1;
        //        SqlCommand cmdEstadistica;

        //        foreach (EstadisticaPartido e in partidos.lEstadisticaPartidos)
        //        {
        //            cmdEstadistica = new SqlCommand("SP_INSERTAR_ESTADISTICAS", connection, t);
        //            cmdEstadistica.CommandType = CommandType.StoredProcedure;
        //            //cmdEstadistica.Parameters.AddWithValue("@IDPartido", NroPartido);
        //            cmdEstadistica.Parameters.AddWithValue("@ID_estadistica", i);
        //            cmdEstadistica.Parameters.AddWithValue("@IDJUGADOR", e.Jugador.id);
        //            cmdEstadistica.Parameters.AddWithValue("@goles", e.Goles);
        //            cmdEstadistica.Parameters.AddWithValue("@asistencias", e.Asistencias);
        //            cmdEstadistica.Parameters.AddWithValue("@amarillas", e.Amarillas);
        //            cmdEstadistica.Parameters.AddWithValue("@rojas", e.Rojas);
        //            cmdEstadistica.Parameters.AddWithValue("@TiempoJugado", e.TiempoJugado);

        //            //cmdEstadistica.Parameters.AddWithValue("@IDPartido", partidos.IdPartido);

        //            cmdEstadistica.ExecuteNonQuery();
        //            i++;

        //        }
        //        t.Commit();

        //    //}
        //    //catch
        //    //{
        //    //    if (t != null) t.Rollback();
        //    //}
        //    //finally
        //    //{
        //    //    if (connection != null && connection.State == ConnectionState.Open) { connection.Close(); }
        //    //}
        //    connection.Close();
        //    return aux;
        //}
        public bool Crear(Partidos partidos)
        {
            SqlConnection connection = DBHelperDao.getInstance().GetConnection();
            SqlTransaction t = null;
            bool aux = true;

            try
            {
                connection.Open();
                t = connection.BeginTransaction();
               
               

                // 2. Crear el Club Visitante (supongamos que ya tienes un objeto Club con la información necesaria)
              
                SqlCommand sqlCommand = new SqlCommand("SP_InsertarPartido", connection, t);
                sqlCommand.CommandType = CommandType.StoredProcedure;

                sqlCommand.Parameters.AddWithValue("@Fecha", partidos.FechaPartido);
                sqlCommand.Parameters.AddWithValue("@Adversario", partidos.ClubVisitante.Id);
                sqlCommand.Parameters.AddWithValue("@equipoLocal", partidos.ClubLocal.Id);
                sqlCommand.Parameters.AddWithValue("@id_temporada", partidos.TemporadaPartido.idTemporada);
                sqlCommand.Parameters.AddWithValue("@goles_local", partidos.GolesLocal);
                sqlCommand.Parameters.AddWithValue("@goles_visitantes", partidos.GolesVisitante);

                sqlCommand.ExecuteNonQuery();

                int i = 1;
                SqlCommand cmdEstadistica;

                foreach (EstadisticaPartido e in partidos.lEstadisticaPartidos)
                {
                    cmdEstadistica = new SqlCommand("SP_INSERTAR_ESTADISTICAS", connection, t);
                    cmdEstadistica.CommandType = CommandType.StoredProcedure;

                    cmdEstadistica.Parameters.AddWithValue("@ID_estadistica", i);
                    cmdEstadistica.Parameters.AddWithValue("@IDJUGADOR", e.Jugador.id);
                    cmdEstadistica.Parameters.AddWithValue("@goles", e.Goles);
                    cmdEstadistica.Parameters.AddWithValue("@asistencias", e.Asistencias);
                    cmdEstadistica.Parameters.AddWithValue("@amarillas", e.Amarillas);
                    cmdEstadistica.Parameters.AddWithValue("@rojas", e.Rojas);
                    cmdEstadistica.Parameters.AddWithValue("@TiempoJugado", e.TiempoJugado);

                    cmdEstadistica.ExecuteNonQuery();
                    i++;
                }

                t.Commit();
            }
            catch (Exception ex)
            {
                if (t != null)
                {
                    t.Rollback();
                    aux = false;
                }
                // Manejar la excepción o registrarla según sea necesario.
            }
            finally
            {
                if (connection != null && connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }

            return aux;
        }
        private int CrearClub(SqlConnection connection, SqlTransaction t, Club club)
        {
            SqlCommand sqlCommand = new SqlCommand("SP_CrearClub", connection, t);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            // Configura los parámetros del stored procedure con los valores del club
           
            // Otros parámetros según tus necesidades

            // Agrega un parámetro de salida para obtener el ID del club recién creado
            SqlParameter parameterIdClub = new SqlParameter("@IDClub", SqlDbType.Int);
            parameterIdClub.Direction = ParameterDirection.Output;
            sqlCommand.Parameters.Add(parameterIdClub);

            sqlCommand.ExecuteNonQuery();

            // Obtiene el ID del club recién creado
            return Convert.ToInt32(parameterIdClub.Value);
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
                comando.Parameters.AddWithValue("@Nombre", oJugador.nom);
                comando.Parameters.AddWithValue("@Apellido", oJugador.ape);
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
                int AnioInicio = int.Parse(fila["AnioInicio"].ToString());
                int categoria = int.Parse(fila["IDCategoria"].ToString());
                int AnioFin= int.Parse(fila["ANIOFIN"].ToString());
                int torneo= int.Parse(fila["id_torneo"].ToString());

                Temporada t = new Temporada(codigo, AnioInicio, AnioFin,  torneo,  categoria);
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
                int Id = int.Parse(dr["IDjugador"].ToString());
                string nom = dr["nombre"].ToString();
                string ape = dr["apellido"].ToString();




                Jugador jugador = new Jugador(Id, nom, ape);
                lJugadores.Add(jugador);

            }
            return lJugadores;
        }
        //public List<Pais> GetPais()
        //{
        //    List<Pais> lPaises = new List<Pais>();
        //    DataTable tabla = DBHelperDao.getInstance().ConsultarSP("SP_CONSULTAR_PAIS");
        //    foreach (DataRow fila in tabla.Rows)
        //    {
        //        int codigo = int.Parse(fila["id_pais"].ToString());
        //        string nombre = fila["nombrePais"].ToString();
        //        Pais c = new Pais(codigo, nombre);
        //        lPaises.Add(c);
        //    }
        //    return lPaises;
        //}
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
            comando.Parameters.AddWithValue("@IDJugador", oJugador.id);
            comando.Parameters.AddWithValue("@Nombre", oJugador.nom);
            comando.Parameters.AddWithValue("@Apellido", oJugador.ape);
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
        public bool EliminarPartido(Partidos partido)
        {
            bool resultado = false;
            SqlConnection conn = DBHelperDao.getInstance().GetConnection();
            SqlCommand command = new SqlCommand("SP_Borrar_Partidos", conn);
            command.CommandType = CommandType.StoredProcedure;


            command.Parameters.Add("@IDPartido", SqlDbType.Int).Value = partido.IdPartido;

            //escribir codigo para borrar partidos

            return resultado;
        }

        public List<Jugador> TraerJugadores(List<Parametro> lParams, string nombreSP)
        {
            DataTable tabla = DBHelperDao.getInstance().Consultar(nombreSP, lParams);
            List<Jugador> lJugador = new List<Jugador>();
            Club club = new Club();
            foreach (DataRow r in tabla.Rows)
            {
                int id = int.Parse(r["IDJugador"].ToString());
                string nombre = r["Nombre"].ToString();
                string Apellido = r["Apellido"].ToString();
                lJugador.Add(new Jugador(id, nombre, Apellido));
            }
            return lJugador;
        }
        public Jugador TraerJugador(int nroJugador)
        {
            Jugador jugador = new Jugador();
            SqlConnection conexion = DBHelperDao.getInstance().GetConnection();
            SqlCommand comando = new SqlCommand();
            conexion.Open();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = "SP_CONSULTAR_JUGADOR";
            Parametro param = new Parametro("@IDJugador", nroJugador);
            comando.Parameters.AddWithValue(param.Nombre, param.Valor);
            DataTable tabla = new DataTable();
            tabla.Load(comando.ExecuteReader());
            conexion.Close();
            jugador.id = nroJugador;
            foreach (DataRow fila in tabla.Rows)
            {
                jugador.nom = fila["Nombre"].ToString();
                jugador.ape = fila["Apellido"].ToString();
            }

            return jugador;
        }
        public bool ActualizarJugador(Jugador oJugador)
        {
            bool aux = true;
            //Creamos la transaccion como nula
            SqlTransaction transaccion = null;
            SqlConnection conexion = DBHelperDao.getInstance().GetConnection();
            try
            {
                conexion.Open();
                //Abro la conexion y despues abro la transaccion bajo esa conexion!
                transaccion = conexion.BeginTransaction();
                //Al crear el comando le pasamos x parametro: el string del comando, la conexion y la transaccion

                SqlCommand comando = new SqlCommand("SP_ACTUALIZAR_JUGADOR", conexion, transaccion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@IDJugador", oJugador.id);
                comando.Parameters.AddWithValue("@Nombre", oJugador.nom);
                comando.Parameters.AddWithValue("@Apellido", oJugador.ape);
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
                    aux = false;
                }
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                {
                    conexion.Close();
                }
            }
            return aux;
        }
        public bool BorrarJugador(int nroJugador)
        {
            bool aux = true;
            SqlConnection conexion = DBHelperDao.getInstance().GetConnection();
            SqlTransaction transaccion = null;
            try
            {
                conexion.Open();
                transaccion = conexion.BeginTransaction();
                SqlCommand comando = new SqlCommand("SP_BORRAR_JUGADOR", conexion, transaccion);
                comando.CommandType = CommandType.StoredProcedure;
                Parametro param = new Parametro("@IDJugador", nroJugador);
                comando.Parameters.AddWithValue(param.Nombre, param.Valor);
                comando.ExecuteNonQuery();
                transaccion.Commit();
            }
            catch
            {
                if (transaccion != null)
                {
                    transaccion.Rollback();
                    aux = false;
                }
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                    conexion.Close();
            }
            return aux;
        }
    }
}

