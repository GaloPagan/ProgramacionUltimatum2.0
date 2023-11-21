using EquipoProgramacionEPF.Datos;
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
    public partial class FrmConsultar : Form
    {
        
        IServicio servicioDatos;
        FactoryServicio fabrica;
        List<Jugador> ljugador;
        public FrmConsultar(FactoryServicio fabrica)
        {
            InitializeComponent();
            servicioDatos = fabrica.GetServicio();
            ljugador = new List<Jugador>();
            this.fabrica = fabrica;
        }

        private void FrmConsultar_Load(object sender, EventArgs e)
        {
            
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            ljugador.Clear();
            dgvJugadores.Rows.Clear();
            List<Parametro> lParametros = new List<Parametro>();
            lParametros.Add(new Parametro("@nombre",txtnombre.Text));
            CargarLista(lParametros);
            AgregarOrdenes();
        }

        private void CargarLista(List<Parametro> lParametros)
        {
            ljugador.AddRange (servicioDatos.TraerJugadores(lParametros, "SP_CONSULTAR_JUGADOR_NOMBRE"));
        }

        private void AgregarOrdenes()
        {
            foreach (Jugador o in ljugador)
            {
                dgvJugadores.Rows.Add(new object[] { o.id,o.nom, o.ape });
            }
        }

        private void cboClub_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Esta seguro que desea borrar el Jugador? Esta accion no se puede deshacer", "Borrar?", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                int nroJugador = int.Parse(dgvJugadores.CurrentRow.Cells["Columnid"].Value.ToString());
                servicioDatos.BorrarJugador(nroJugador);
                dgvJugadores.Rows.Clear();
            }
            else
            {
                this.Dispose();
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            int nro = Convert.ToInt32(dgvJugadores.CurrentRow.Cells["Columnid"].Value.ToString());
            new FrmEditar(fabrica, nro).ShowDialog();
        }
    }
}
