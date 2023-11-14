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
    public partial class FrmReportes : Form
    {
        public FrmReportes()
        {
            InitializeComponent();
        }

        private void FrmReportes_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'dsPartidos1.TablaPartidos' Puede moverla o quitarla según sea necesario.
            this.tablaPartidosTableAdapter.Fill(this.dsPartidos1.TablaPartidos);

            this.reportViewer1.RefreshReport();
        }
    }
}
