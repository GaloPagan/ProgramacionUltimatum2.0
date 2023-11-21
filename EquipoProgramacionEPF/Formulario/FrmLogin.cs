using EquipoProgProyecto;
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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace EquipoProgramacionEPF.Formulario
{
    public partial class FrmLogin : Form
    {
        IServicio ServicioUser = null;
        public FrmLogin(FactoryServicio fabrica)
        {
            InitializeComponent();
            ServicioUser = fabrica.GetServicio();
        }

        private void FrmLogin_Load(object sender, EventArgs e)
        {

        }

        private void btnIngLog_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string pass = txtContra.Text;
            string respuesta = ServicioUser.VerificarUsuario(usuario, pass);
            if (respuesta.Length > 0)
            {
                MessageBox.Show(respuesta,"Aviso",MessageBoxButtons.OK,MessageBoxIcon.Error);
            } else {
                MessageBox.Show("Operación exitosa, será redirigido", "Exito");
                this.Hide();
                FormPrincipal frmPal = new FormPrincipal(new FactoryServicioImp());
                frmPal.Show();
            }
        }

        private void btnCrearLog_Click(object sender, EventArgs e)
        {
            this.Hide();
            FrmSignUp frmSnUp = new FrmSignUp(new FactoryServicioImp());
            frmSnUp.FrmLogReference = this;
            frmSnUp.Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
