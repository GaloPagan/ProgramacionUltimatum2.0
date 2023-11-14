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
    public partial class FormPrincipal : Form
    {
        FactoryServicioImp factory = null;
        public FormPrincipal(FactoryServicioImp factory)
        {
            InitializeComponent();
            this.factory = factory;
        }

        private void FormPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void nuevoPartidoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            new FrmPartido(factory).ShowDialog();
        }

        private void nuevoJugadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
           new FrmJugador(factory).ShowDialog(); 
            
        }

        private void vERREPORTEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmReportes FR = new FrmReportes();
            FR.ShowDialog();
        }
    }
}
