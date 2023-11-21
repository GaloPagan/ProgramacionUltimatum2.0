
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using EquipoProgProyecto;
using EquipoProgramacionEPF.Formulario;
using EquipoProgramacionEPF.Servicios;
using EquipoProgramacionEPF;

namespace EquipoProgProyecto
{
    public partial class FormPrincipal : Form
    {
        FactoryServicio fabrica = null;
        public FormPrincipal(FactoryServicio fabrica)
        {
            InitializeComponent();
            this.fabrica = fabrica;
        }


        private void nuevosToolStripMenuItem_Click(object sender, EventArgs e)
        {


        }

        private void consultarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void nuevoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void agregarEstadísticaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void actualesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void nuevaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void inscribirToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Estas seguro que queres salir?", "Salir", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
                Close();
        }

        private void FormPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void estadisticasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void jugadoresToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void nuevoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            
        }

        private void pictureBox1_Click_1(object sender, EventArgs e)
        {

        }

        private void nuevoToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            FrmJugador jugador= new FrmJugador(fabrica);
            jugador.ShowDialog();
        }

        private void reporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //PartidosReport report = new PartidosReport();
            //report.ShowDialog();
            FrmReporte frmReportes = new FrmReporte();
            frmReportes.ShowDialog();
        }

        private void nuevoToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            FrmPartido partido = new FrmPartido();
            partido.ShowDialog();
        }

        private void estadisticasToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            FrmPartido estadisticaPartido = new FrmPartido(fabrica);
            estadisticaPartido.ShowDialog();
        }

        private void consultarToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            FrmConsultar consultar = new FrmConsultar(fabrica);
            consultar.ShowDialog();
        }
    }
}
