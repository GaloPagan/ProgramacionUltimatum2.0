namespace EquipoProgramacionEPF.Formulario
{
    partial class FrmConsultar
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnEditar = new System.Windows.Forms.Button();
            this.btnBorrar = new System.Windows.Forms.Button();
            this.btncancelar = new System.Windows.Forms.Button();
            this.btnConsultar = new System.Windows.Forms.Button();
            this.lblClub = new System.Windows.Forms.Label();
            this.txtnombre = new System.Windows.Forms.TextBox();
            this.dgvJugadores = new System.Windows.Forms.DataGridView();
            this.Columnid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnNombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnApellido = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvJugadores)).BeginInit();
            this.SuspendLayout();
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(12, 318);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(75, 23);
            this.btnEditar.TabIndex = 1;
            this.btnEditar.Text = "Editar";
            this.btnEditar.UseVisualStyleBackColor = true;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // btnBorrar
            // 
            this.btnBorrar.Location = new System.Drawing.Point(129, 318);
            this.btnBorrar.Name = "btnBorrar";
            this.btnBorrar.Size = new System.Drawing.Size(75, 23);
            this.btnBorrar.TabIndex = 2;
            this.btnBorrar.Text = "Borrar";
            this.btnBorrar.UseVisualStyleBackColor = true;
            this.btnBorrar.Click += new System.EventHandler(this.btnBorrar_Click);
            // 
            // btncancelar
            // 
            this.btncancelar.Location = new System.Drawing.Point(431, 318);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(75, 23);
            this.btncancelar.TabIndex = 3;
            this.btncancelar.Text = "Cancelar";
            this.btncancelar.UseVisualStyleBackColor = true;
            // 
            // btnConsultar
            // 
            this.btnConsultar.Location = new System.Drawing.Point(198, 21);
            this.btnConsultar.Name = "btnConsultar";
            this.btnConsultar.Size = new System.Drawing.Size(75, 23);
            this.btnConsultar.TabIndex = 4;
            this.btnConsultar.Text = "Consultar";
            this.btnConsultar.UseVisualStyleBackColor = true;
            this.btnConsultar.Click += new System.EventHandler(this.btnConsultar_Click);
            // 
            // lblClub
            // 
            this.lblClub.AutoSize = true;
            this.lblClub.Location = new System.Drawing.Point(12, 29);
            this.lblClub.Name = "lblClub";
            this.lblClub.Size = new System.Drawing.Size(47, 13);
            this.lblClub.TabIndex = 6;
            this.lblClub.Text = "Nombre:";
            // 
            // txtnombre
            // 
            this.txtnombre.Location = new System.Drawing.Point(61, 26);
            this.txtnombre.Name = "txtnombre";
            this.txtnombre.Size = new System.Drawing.Size(131, 20);
            this.txtnombre.TabIndex = 7;
            // 
            // dgvJugadores
            // 
            this.dgvJugadores.AllowUserToAddRows = false;
            this.dgvJugadores.AllowUserToDeleteRows = false;
            this.dgvJugadores.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvJugadores.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Columnid,
            this.ColumnNombre,
            this.ColumnApellido});
            this.dgvJugadores.Location = new System.Drawing.Point(12, 65);
            this.dgvJugadores.Name = "dgvJugadores";
            this.dgvJugadores.ReadOnly = true;
            this.dgvJugadores.Size = new System.Drawing.Size(344, 236);
            this.dgvJugadores.TabIndex = 0;
            // 
            // Columnid
            // 
            this.Columnid.HeaderText = "ID";
            this.Columnid.Name = "Columnid";
            this.Columnid.ReadOnly = true;
            // 
            // ColumnNombre
            // 
            this.ColumnNombre.HeaderText = "Nombre";
            this.ColumnNombre.Name = "ColumnNombre";
            this.ColumnNombre.ReadOnly = true;
            this.ColumnNombre.Width = 150;
            // 
            // ColumnApellido
            // 
            this.ColumnApellido.HeaderText = "Apellido";
            this.ColumnApellido.Name = "ColumnApellido";
            this.ColumnApellido.ReadOnly = true;
            this.ColumnApellido.Width = 150;
            // 
            // FrmConsultar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(524, 352);
            this.Controls.Add(this.txtnombre);
            this.Controls.Add(this.lblClub);
            this.Controls.Add(this.btnConsultar);
            this.Controls.Add(this.btncancelar);
            this.Controls.Add(this.btnBorrar);
            this.Controls.Add(this.btnEditar);
            this.Controls.Add(this.dgvJugadores);
            this.Name = "FrmConsultar";
            this.Text = "FrmConsultar";
            this.Load += new System.EventHandler(this.FrmConsultar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvJugadores)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Button btnBorrar;
        private System.Windows.Forms.Button btncancelar;
        private System.Windows.Forms.Button btnConsultar;
        private System.Windows.Forms.Label lblClub;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.DataGridView dgvJugadores;
        private System.Windows.Forms.DataGridViewTextBoxColumn Columnid;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnNombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnApellido;
    }
}