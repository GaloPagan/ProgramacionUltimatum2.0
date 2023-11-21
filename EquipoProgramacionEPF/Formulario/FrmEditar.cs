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
    public partial class FrmEditar : Form
    {
        IServicio ServicioDatos = null;
        Jugador jugador = null;
        
        public FrmEditar(FactoryServicio fabrica, int nroJugador)
        {
            InitializeComponent();
            ServicioDatos = fabrica.GetServicio();
            jugador = ServicioDatos.TraerJugador(nroJugador);
        }

        private void FrmEditar_Load(object sender, EventArgs e)
        {
            CargarComboClubes();
            CargarComboPaises();
            CargarComboPosiciones();
            txtNombre.Text = jugador.nom;
            txtApellido.Text = jugador.ape;
            txtCamiseta.Text = jugador.Numero.ToString();
            txtPeso.Text = jugador.Peso.ToString();
            txtAltura.Text = jugador.Altura.ToString();
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
            if (dtpFecha.Value.Day >= DateTime.Now.Day)
            {
                MessageBox.Show("Debe ingresar una fecha que esté acorde", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            if (cboClub.SelectedIndex == -1)
            {
                MessageBox.Show("Debe ingresar un club", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            if (cboPais.SelectedIndex == -1)
            {
                MessageBox.Show("Debe ingresar un pais", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (cboPosicion.SelectedIndex == -1)
            {
                MessageBox.Show("Debe ingresar una posicion", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            jugador.pais = (Pais)cboPais.SelectedItem;
            jugador.posicion = (Posicion)cboPosicion.SelectedItem;
            jugador.club = (Club)cboClub.SelectedItem;
            jugador.nom = txtNombre.Text;
            jugador.ape = txtApellido.Text;
            jugador.Numero = Int32.Parse(txtCamiseta.Text);
            jugador.FechaNacimiento = Convert.ToDateTime(dtpFecha.Text);
            jugador.Altura = double.Parse(txtAltura.Text);
            jugador.Peso = double.Parse(txtPeso.Text);
            if (ServicioDatos.ActualizarJugador(jugador))
            {
                MessageBox.Show("Jugador actualizado exitosamente!", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Dispose();
            }
            else
            {
                MessageBox.Show("no pudo actualizarse el Jugador!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("seguro que queres volver", "VOLVER", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
            { Close(); }
        }
    }
}
