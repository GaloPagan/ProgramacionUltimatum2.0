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
        //FactoryServicioImp fabrica = null;
       
        //Jugador Jugador = null;
        List<EstadisticaPartido> listaEstadistica = new List<EstadisticaPartido>();
        IServicio ServicioDatos = null;
        int auxEstadistica;
        
       
        
        //public FrmPartido(FactoryServicioImp fabrica)
        //{
        //    InitializeComponent();
        //    ServicioDatos = fabrica.GetServicio();
        //    NuevoPartido= new Partidos();
        //    auxEstadistica = 1;



        //}
        public FrmPartido(FactoryServicio fabrica)
        {
            InitializeComponent();
            ServicioDatos = fabrica.GetServicio();
            auxEstadistica = 1;



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


            Inicializar();

        }

        private void Inicializar()
        {
            txtGolesLoacal.Text = "0";
            txtGolesVisitante.Text = "0";
            txtGoles.Text = "0";
            txtGolesVisitante.Text = "0";
            cboLocal.SelectedIndex = -1;
            cboVisitante.SelectedIndex = -1;
            txtAsiis.Text = "0";
            txtGoles.Text = "0";
            txtRoja.Text = "0";
            txtAmarillas.Text = "0";
            txtTiempoJugado.Text = "0";
            cboJugador.SelectedIndex = -1;
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
            //NuevoPartido.TemporadaPartido = (Temporada)cboTeporada.SelectedItem;
            //NuevoPartido.FechaPartido = dtpFecha.Value;
            //NuevoPartido.ClubLocal = (Club)cboLocal.SelectedItem;
            //NuevoPartido.ClubVisitante = (Club)cboVisitante.SelectedItem;
            //NuevoPartido.GolesLocal = int.Parse(txtGolesLoacal.Text);
            //NuevoPartido.GolesVisitante = int.Parse(txtGolesVisitante.Text);



            int GLoc = int.Parse(txtGolesLoacal.Text);
            int GVis = int.Parse(txtGolesVisitante.Text);
            DateTime Fec = dtpFecha.Value;
            Temporada Temp = (Temporada)cboTeporada.SelectedItem;
            Club CLoc = (Club)cboLocal.SelectedItem;
            Club CVis = (Club)cboVisitante.SelectedItem;
            Partidos partido = new Partidos(Temp, CLoc, CVis, Fec, GLoc, GVis);

            foreach (EstadisticaPartido estadistica in listaEstadistica)
            {
                partido.AddEstadistica(estadistica);
            }
            //NuevoPartido.GolesLocal = Convert.ToInt32(txtGolesLoacal.Text);
            //NuevoPartido.GolesVisitante = Convert.ToInt32(txtGolesVisitante.Text);
            //NuevoPartido.FechaPartido = Convert.ToDateTime(dtpFecha.Value);

            //NuevoPartido.temporada = int.Parse(cboTeporada.SelectedItem.ToString());
            //NuevoPartido.ClubLocal.Id = Convert.ToInt32(cboLocal.SelectedValue);
            //NuevoPartido.ClubVisitante.Id = Convert.ToInt32(cboVisitante.SelectedValue);
            //Temporada t = (Temporada)cboTeporada.SelectedItem;
            //Club clubLocal=(Club)cboLocal.SelectedItem;
            //Club clubVis=(Club)cboVisitante.SelectedItem;

            //NuevoPartido.ClubLocal = (Club)cboLocal.SelectedItem;
            //NuevoPartido.ClubVisitante = (Club)cboVisitante.SelectedItem;








            if (ServicioDatos.Crear(partido))
            
            {
                MessageBox.Show("Se registro con exito el partido", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Information);

                this.Dispose();
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
            if (txtTiempoJugado.Text=="0")
            {
                MessageBox.Show("Ingrese un Tiempo Jugado...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if(cboLocal.SelectedIndex == -1)
            {
                MessageBox.Show("Ingrese el club Local...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (cboVisitante.SelectedIndex == -1)
            {
                MessageBox.Show("Ingrese el club Visitante...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            foreach (DataGridViewRow dr in dgvEstadisticas.Rows)
            {
                Jugador jug = (Jugador)cboJugador.SelectedItem;
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
            listaEstadistica.Add(estadistica);
            //NuevoPartido.AddEstadistica(estadistica);

            dgvEstadisticas.Rows.Add(new object[] { j.id,j.nom  ,Asi, gol, ama, roj, Tie, "Quitar" });
            auxEstadistica++;
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
            txtGolesLoacal.Text = "0";
            txtGolesVisitante.Text = "0";
            txtGoles.Text = "0";
            txtGolesVisitante.Text = "0";
            cboLocal.SelectedIndex = -1;
            cboVisitante.SelectedIndex = -1;
        }

        private void dgvEstadisticas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvEstadisticas.CurrentCell.ColumnIndex == 7)
            {
                //NuevoPartido.RemoveEstadistica(dgvEstadisticas.CurrentRow.Index);
                listaEstadistica.RemoveAt(dgvEstadisticas.CurrentRow.Index);
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

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void cboLocal_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
