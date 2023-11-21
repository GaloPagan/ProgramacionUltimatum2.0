using EquipoProgramacionEPF.Dominio;
using EquipoProgramacionEPF.Http;
using EquipoProgramacionEPF.Servicios;
using Newtonsoft.Json;
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

        private async void FrmJugador_Load(object sender, EventArgs e)
        {
            CargarComboClubes();
            CargarComboPaises();
            //CargarComboPaisesAsync();
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
        private async Task CargarComboPaisesAsync()
        {
            string url = "https://localhost:7163";
            var data = await ClienteSingleton.GetInstance().GetAsync(url);
            List<Pais> lPaises = JsonConvert.DeserializeObject<List<Pais>>(data);
            cboPais.DataSource = lPaises;
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
            Jugador.pais = (Pais)cboPais.SelectedItem;
            Jugador.posicion = (Posicion)cboPosicion.SelectedItem;
            Jugador.club = (Club)cboClub.SelectedItem;
            Jugador.nom = txtNombre.Text;
            Jugador.ape = txtApellido.Text;
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

        private void btnCancelar_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("seguro que queres salir", "Salir", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
            { Close(); }
        }
    }
}
