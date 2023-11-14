using EquipoProgramacionEPF.Dominio;
using EquipoProgramacionEPF.Formulario;
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

namespace EquipoProgramacionEPF
{
    public partial class FrmPartido : Form
    {
        FactoryServicioImp fabrica = null;
        IServicio ServicioDatos = null;
        Jugador Jugador = null;
        Partidos NuevoPartido = null; 
        public FrmPartido(FactoryServicioImp fabrica)
        {
            InitializeComponent();
            ServicioDatos = fabrica.GetServicio();
            NuevoPartido= new Partidos();

        }

        public FrmPartido()
        {
        }

        private void FrmPartido_Load(object sender, EventArgs e)
        {
            CargarComboLocal();
            CargarComboVisitante();
            CargarCombotemporada();
            CargarComboJugadores();
            txtGolesLoacal.Text = "0";
            txtGolesVisitante.Text = "0";

        }

        private void CargarComboJugadores()
        {
            cboJugador.DataSource = ServicioDatos.GetJugadores2();
            cboJugador.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void CargarCombotemporada()
        {
            cboTeporada.DataSource = ServicioDatos.GetTemporada();
            cboTeporada.DropDownStyle= ComboBoxStyle.DropDownList;
        }

        private void CargarComboVisitante()
        {
            cboVisitante.DataSource = ServicioDatos.GetClub();
            cboVisitante.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void CargarComboLocal()
        {
            cboLocal.DataSource = ServicioDatos.GetClub();
            cboLocal.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //new FrmEstadisticaPartido(fabrica).ShowDialog();
            GrabarPartido();

        }
        private void GrabarPartido()
        {
            
            NuevoPartido.GolesLocal = Convert.ToInt32(txtGolesLoacal.Text);
            NuevoPartido.GolesVisitante = Convert.ToInt32(txtGolesVisitante.Text);
            NuevoPartido.FechaPartido = Convert.ToDateTime(dtpFecha.Value);
       

           
            int nroPartido = ServicioDatos.Crear(NuevoPartido);
            if (nroPartido > 0)
            {
                MessageBox.Show("Se registro con exito el partido", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Information);

                NuevoPartido = new Partidos();
            }
            else
            {
                MessageBox.Show("NO se pudo registrar El Partido...", "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }


        private void btnAGREGAR_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtTiempoJugado.Text))
            {
                MessageBox.Show("Ingrese un Tiempo Jugado...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (cboJugador.SelectedIndex == -1)
            {
                MessageBox.Show("Ingrese un Jugador...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            foreach (DataGridViewRow dr in dgvEstadisticas.Rows)
            {
                if (dr.Cells["ColJugador"].Value.ToString().Equals(cboJugador.SelectedItem.ToString()))
                {
                    MessageBox.Show("Este Jugador ya se Agregó...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }
            }

            Jugador j = (Jugador)cboJugador.SelectedItem;

            int ama = Convert.ToInt32(txtAmarillas.Text);
            int roj = Convert.ToInt32(txtRoja.Text);
            int gol = Convert.ToInt32(txtGoles.Text);
            int Asi = Convert.ToInt32(txtAsiis.Text);
            int Tie = Convert.ToInt32(txtTiempoJugado.Text);

            EstadisticaPartido estadistica = new EstadisticaPartido(j, Asi, gol, ama, roj, Tie);

            NuevoPartido.AddEstadistica(estadistica);

            dgvEstadisticas.Rows.Add(new object[] { j.IdJugador,  Asi, gol, ama, roj, Tie, "Quitar" });

            limpiar();
        }

        private void limpiar()
        {
            txtGoles.Text = "0"; 
            txtAsiis.Text = "0";
            txtAmarillas.Text = "0";
            txtRoja.Text= "0";
            txtTiempoJugado.Text = "0";
            cboJugador.SelectedIndex= 0;
        }

        private void dgvEstadisticas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvEstadisticas.CurrentCell.ColumnIndex == 6)
            {
                NuevoPartido.RemoveEstadistica(dgvEstadisticas.CurrentRow.Index);
                dgvEstadisticas.Rows.RemoveAt(dgvEstadisticas.CurrentRow.Index);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("seguro que queres salir", "Salir", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2)==DialogResult.Yes) 
            { Close(); }
        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("seguro que queres volver", "VOLVER", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
            { Close(); }
        }
    }
}
