using EquipoProgramacionEPF.Datos.Interfaz;
using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Datos.Implementacion
{
    public class UsuarioDAO : IUsuarioDAO
    {
        public Usuario DarUsuario(string usuario)
        {
            SqlConnection conn = DBHelperDao.getInstance().GetConnection();
            conn.Open();
            SqlDataReader lector;
            SqlCommand comando = new SqlCommand("SP_CONSULTAR_USUARIO", conn);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@usuario", usuario);
            lector = comando.ExecuteReader();
            Usuario user = new Usuario();
            while (lector.Read())
            {
                user.Nombre = lector["usuario"].ToString();
                user.Contraseña = lector["pass"].ToString();
            }
            conn.Close();
            return user;
        }
        public string ControlarLogin(string usuario, string pass)
        {
            Usuario datosUser = null;
            string respuesta = string.Empty;
            if (string.IsNullOrEmpty(usuario) || string.IsNullOrEmpty(pass))
            {
                respuesta = "Debe ingresar los campos";
            } 
            else 
            {
                datosUser = this.DarUsuario(usuario);

                if (datosUser == null)
                {
                    respuesta = "El usuario no existe";
                } 
                else 
                {
                    if (datosUser.Contraseña != pass)
                    {
                        respuesta = "La contraseña no coincide";
                    }
                }
            }
            return respuesta;
        }

        public bool CreacionUsuario(Usuario oUsuario)
        {
            bool resultado = true;
            SqlTransaction t = null;
            SqlConnection conn = DBHelperDao.getInstance().GetConnection();
            
            
                conn.Open();
                t = conn.BeginTransaction();
                SqlCommand comando = new SqlCommand("SP_CREAR_USUARIO", conn, t);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@usuario", oUsuario.Nombre);
                comando.Parameters.AddWithValue("@pass", oUsuario.Contraseña);
                comando.ExecuteNonQuery();
                t.Commit();
            
            //catch
            //{
            //    resultado = false;
            //    t.Rollback();
            //}
            //finally
            //{
            //    if (conn != null)
            //        conn.Close();
            //}
            conn.Close();
            return resultado;
        }
    }
}
