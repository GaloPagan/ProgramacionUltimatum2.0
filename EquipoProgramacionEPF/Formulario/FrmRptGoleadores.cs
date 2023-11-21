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
    public partial class FrmRptGoleadores : Form
    {
        public FrmRptGoleadores()
        {
            InitializeComponent();
        }

        private void FrmRptGoleadores_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'dSGoleadores.T_Goleadores' Puede moverla o quitarla según sea necesario.
            this.t_GoleadoresTableAdapter.Fill(this.dSGoleadores.T_Goleadores);

            this.reportViewer1.RefreshReport();
        }
    }
}
