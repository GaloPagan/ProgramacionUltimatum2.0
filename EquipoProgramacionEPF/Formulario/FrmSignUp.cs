using EquipoProgramacionEPF.Dominio;
using EquipoProgramacionEPF.Servicios;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EquipoProgramacionEPF.Formulario
{
    public partial class FrmSignUp : Form
    {
        public FrmLogin FrmLogReference { get; set; }
        IServicio ServicioSign;
        public FrmSignUp(FactoryServicio fabrica)
        {
            InitializeComponent();
            ServicioSign = fabrica.GetServicio();
        }
        private void btnAceptarSign_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUserSign.Text))
            {
                MessageBox.Show("Debe ingresar un usuario","Aviso",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
                return;
            }
            if (string.IsNullOrEmpty(txtPassSign.Text)) 
            {
                MessageBox.Show("Debe ingresar una contraseña","Aviso",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
                return;
            }
            if (txtPassSign.TextLength < 8 || txtPassSign.TextLength > 20)
            {
                MessageBox.Show("La contreseña debe ser mayor a 8 y menor a 20 caracteres", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (string.IsNullOrEmpty(txtPassRepSign.Text) || txtPassRepSign.Text != txtPassSign.Text) 
            {
                MessageBox.Show("Debe repetir la contraseña","Aviso",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
                return;
            }
            Usuario oUser = new Usuario();
            oUser.Nombre = txtUserSign.Text;
            oUser.Contraseña = txtPassSign.Text;
            CrearUsuario(oUser);
        }

        private void CrearUsuario(Usuario oUser)
        {
            if (ServicioSign.CrearUsuario(oUser))
                MessageBox.Show("Se logro crear con exito el nuevo usuario!","Exito",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
            else
                MessageBox.Show("No se pudo crear el usuario, puede que ya exista", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private void lLabelIng_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Close();
            FrmLogReference.Show();
        }

        private void btnCancelarSign_Click(object sender, EventArgs e)
        {
            this.Close();
            FrmLogReference.Show();
        }
    }
}
