using EquipoProgramacionEPF.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Datos.Interfaz
{
    public interface IUsuarioDAO
    {
        Usuario DarUsuario(string usuario);
        string ControlarLogin(string usuario, string pass);
        bool CreacionUsuario(Usuario oUsuario);
    }
}
