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
    public partial class FrmJugador : Form
    {
        IServicio ServicioDatos = null;
        Jugador Jugador = null;
        public FrmJugador(FactoryServicio fabrica)
        {
            InitializeComponent();
            ServicioDatos = fabrica.GetServicio();
            Jugador = new Jugador();
        }

        public FrmJugador()
        {
        }

        private void FrmJugador_Load(object sender, EventArgs e)
        {
            CargarComboClubes();
            CargarComboPaises();
            CargarComboPosiciones();
            
        }

        private void CargarComboPosiciones()
        {
            cboPosicion.DataSource = ServicioDatos.GetPosicion();
            cboPosicion.DropDownStyle = ComboBoxStyle.DropDownList;
            
        }

        private void CargarComboPaises()
        {
            cboPais.DataSource = ServicioDatos.GetPais();
            cboPais.DropDownStyle = ComboBoxStyle.DropDownList;
            
        }

        private void CargarComboClubes()
        {
            cboClub.DataSource = ServicioDatos.GetClub();
            cboClub.DropDownStyle = ComboBoxStyle.DropDownList;


        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtAltura.Text))
            {
                MessageBox.Show("Debe ingresar una altura", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (string.IsNullOrEmpty(txtNombre.Text))
            {
                MessageBox.Show("Debe ingresar un nombre", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (string.IsNullOrEmpty(txtPeso.Text))
            {
                MessageBox.Show("Debe ingresar un peso", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (string.IsNullOrEmpty(txtApellido.Text))
            {
                MessageBox.Show("Debe ingresar un apellido", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (string.IsNullOrEmpty(txtCamiseta.Text))
            {
                MessageBox.Show("Debe ingresar un numero", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (dtpFecha.Value.Day != DateTime.Now.Day)
            {
                MessageBox.Show("Debe ingresar una fecha que esté acorde", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            if (cboClub.SelectedIndex == 0)
            {
                MessageBox.Show("Debe ingresar un club", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            if (cboPais.SelectedIndex == 0)
            {
                MessageBox.Show("Debe ingresar un pais", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (cboPosicion.SelectedIndex == 0)
            {
                MessageBox.Show("Debe ingresar una posicion", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            Jugador.pais = (Pais)cboPais.SelectedItem;
            Jugador.posicion = (Posicion)cboPosicion.SelectedItem;
            Jugador.club = (Club)cboClub.SelectedItem;
            Jugador.Nombre = txtNombre.Text;
            Jugador.Apellido = txtApellido.Text;
            Jugador.Numero = Int32.Parse(txtCamiseta.Text);
            Jugador.FechaNacimiento = Convert.ToDateTime(dtpFecha.Text);
            Jugador.Altura = double.Parse(txtAltura.Text);
            Jugador.Peso = double.Parse(txtPeso.Text);
            if (ServicioDatos.CrearJugador(Jugador))
            {
                MessageBox.Show("Jugador confirmada exitosamente!", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Dispose();
            }
            else
            {
                MessageBox.Show("no pudo confirmarse el Jugador!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
