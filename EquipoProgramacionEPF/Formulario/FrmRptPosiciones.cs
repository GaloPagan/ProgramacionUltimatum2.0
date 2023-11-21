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
    public partial class FrmRptPosiciones : Form
    {
        public FrmRptPosiciones()
        {
            InitializeComponent();
        }

        private void FrmRptPosiciones_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'dSPosiciones.T_Posiciones' Puede moverla o quitarla según sea necesario.
            this.t_PosicionesTableAdapter.Fill(this.dSPosiciones.T_Posiciones);

            this.reportViewer1.RefreshReport();
        }
    }
}
