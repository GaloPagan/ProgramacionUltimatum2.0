namespace EquipoProgramacionEPF
{
    partial class FrmPartido
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.cboLocal = new System.Windows.Forms.ComboBox();
            this.cboVisitante = new System.Windows.Forms.ComboBox();
            this.txtGolesLoacal = new System.Windows.Forms.TextBox();
            this.txtGolesVisitante = new System.Windows.Forms.TextBox();
            this.dtpFecha = new System.Windows.Forms.DateTimePicker();
            this.cboTeporada = new System.Windows.Forms.ComboBox();
            this.btnVolver = new System.Windows.Forms.Button();
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.dgvEstadisticas = new System.Windows.Forms.DataGridView();
            this.label9 = new System.Windows.Forms.Label();
            this.cboJugador = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtGoles = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtAsiis = new System.Windows.Forms.TextBox();
            this.txtAmarillas = new System.Windows.Forms.TextBox();
            this.txtRoja = new System.Windows.Forms.TextBox();
            this.txtTiempoJugado = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.btnAGREGAR = new System.Windows.Forms.Button();
            this.ColJugador = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColAsistencias = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColGoles = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColAmarilla = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColRojas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColTiempo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnBorrar = new System.Windows.Forms.DataGridViewButtonColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEstadisticas)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 32);
            this.label2.TabIndex = 1;
            this.label2.Text = "EQUIPO \r\nLOCAL";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(491, 6);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 32);
            this.label3.TabIndex = 2;
            this.label3.Text = "EQUIPO \r\nVISITANTE";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(31, 41);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 32);
            this.label4.TabIndex = 3;
            this.label4.Text = "GOLES\r\nLOCAL";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(491, 41);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(86, 32);
            this.label5.TabIndex = 4;
            this.label5.Text = "GOLES\r\nVISITANTES";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(31, 83);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 16);
            this.label6.TabIndex = 5;
            this.label6.Text = "FECHA";
            // 
            // cboLocal
            // 
            this.cboLocal.FormattingEnabled = true;
            this.cboLocal.Location = new System.Drawing.Point(99, 9);
            this.cboLocal.Margin = new System.Windows.Forms.Padding(4);
            this.cboLocal.Name = "cboLocal";
            this.cboLocal.Size = new System.Drawing.Size(176, 24);
            this.cboLocal.TabIndex = 6;
            // 
            // cboVisitante
            // 
            this.cboVisitante.FormattingEnabled = true;
            this.cboVisitante.Location = new System.Drawing.Point(308, 6);
            this.cboVisitante.Margin = new System.Windows.Forms.Padding(4);
            this.cboVisitante.Name = "cboVisitante";
            this.cboVisitante.Size = new System.Drawing.Size(176, 24);
            this.cboVisitante.TabIndex = 7;
            // 
            // txtGolesLoacal
            // 
            this.txtGolesLoacal.Location = new System.Drawing.Point(99, 51);
            this.txtGolesLoacal.Margin = new System.Windows.Forms.Padding(4);
            this.txtGolesLoacal.Name = "txtGolesLoacal";
            this.txtGolesLoacal.Size = new System.Drawing.Size(176, 22);
            this.txtGolesLoacal.TabIndex = 8;
            // 
            // txtGolesVisitante
            // 
            this.txtGolesVisitante.Location = new System.Drawing.Point(308, 51);
            this.txtGolesVisitante.Margin = new System.Windows.Forms.Padding(4);
            this.txtGolesVisitante.Name = "txtGolesVisitante";
            this.txtGolesVisitante.Size = new System.Drawing.Size(176, 22);
            this.txtGolesVisitante.TabIndex = 9;
            // 
            // dtpFecha
            // 
            this.dtpFecha.Location = new System.Drawing.Point(99, 83);
            this.dtpFecha.Margin = new System.Windows.Forms.Padding(4);
            this.dtpFecha.Name = "dtpFecha";
            this.dtpFecha.Size = new System.Drawing.Size(176, 22);
            this.dtpFecha.TabIndex = 11;
            // 
            // cboTeporada
            // 
            this.cboTeporada.FormattingEnabled = true;
            this.cboTeporada.Location = new System.Drawing.Point(308, 85);
            this.cboTeporada.Margin = new System.Windows.Forms.Padding(4);
            this.cboTeporada.Name = "cboTeporada";
            this.cboTeporada.Size = new System.Drawing.Size(176, 24);
            this.cboTeporada.TabIndex = 12;
            // 
            // btnVolver
            // 
            this.btnVolver.Location = new System.Drawing.Point(12, 470);
            this.btnVolver.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnVolver.Name = "btnVolver";
            this.btnVolver.Size = new System.Drawing.Size(133, 37);
            this.btnVolver.TabIndex = 13;
            this.btnVolver.Text = "VOLVER";
            this.btnVolver.UseVisualStyleBackColor = true;
            this.btnVolver.Click += new System.EventHandler(this.btnVolver_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.Location = new System.Drawing.Point(151, 470);
            this.btnConfirmar.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(133, 37);
            this.btnConfirmar.TabIndex = 14;
            this.btnConfirmar.Text = "CONFIRMAR";
            this.btnConfirmar.UseVisualStyleBackColor = true;
            this.btnConfirmar.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(290, 470);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(133, 37);
            this.btnSalir.TabIndex = 15;
            this.btnSalir.Text = "SALIR";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.button3_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(491, 93);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(93, 16);
            this.label7.TabIndex = 16;
            this.label7.Text = "TEMPORADA";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(280, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(21, 16);
            this.label1.TabIndex = 17;
            this.label1.Text = "vs";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(282, 57);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(21, 16);
            this.label8.TabIndex = 18;
            this.label8.Text = "vs";
            // 
            // dgvEstadisticas
            // 
            this.dgvEstadisticas.AllowUserToAddRows = false;
            this.dgvEstadisticas.AllowUserToDeleteRows = false;
            this.dgvEstadisticas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEstadisticas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColJugador,
            this.ColAsistencias,
            this.ColGoles,
            this.ColAmarilla,
            this.ColRojas,
            this.ColTiempo,
            this.btnBorrar});
            this.dgvEstadisticas.Location = new System.Drawing.Point(12, 235);
            this.dgvEstadisticas.Name = "dgvEstadisticas";
            this.dgvEstadisticas.ReadOnly = true;
            this.dgvEstadisticas.RowHeadersWidth = 51;
            this.dgvEstadisticas.RowTemplate.Height = 24;
            this.dgvEstadisticas.Size = new System.Drawing.Size(778, 217);
            this.dgvEstadisticas.TabIndex = 12;
            this.dgvEstadisticas.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEstadisticas_CellContentClick);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(26, 117);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(57, 16);
            this.label9.TabIndex = 0;
            this.label9.Text = "Jugador";
            // 
            // cboJugador
            // 
            this.cboJugador.FormattingEnabled = true;
            this.cboJugador.Location = new System.Drawing.Point(99, 117);
            this.cboJugador.Name = "cboJugador";
            this.cboJugador.Size = new System.Drawing.Size(176, 24);
            this.cboJugador.TabIndex = 11;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(31, 160);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(43, 16);
            this.label10.TabIndex = 1;
            this.label10.Text = "Goles";
            // 
            // txtGoles
            // 
            this.txtGoles.Location = new System.Drawing.Point(99, 160);
            this.txtGoles.Name = "txtGoles";
            this.txtGoles.Size = new System.Drawing.Size(176, 22);
            this.txtGoles.TabIndex = 8;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(16, 207);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(76, 16);
            this.label11.TabIndex = 2;
            this.label11.Text = "Asistencias";
            // 
            // txtAsiis
            // 
            this.txtAsiis.Location = new System.Drawing.Point(99, 207);
            this.txtAsiis.Name = "txtAsiis";
            this.txtAsiis.Size = new System.Drawing.Size(176, 22);
            this.txtAsiis.TabIndex = 7;
            // 
            // txtAmarillas
            // 
            this.txtAmarillas.Location = new System.Drawing.Point(308, 119);
            this.txtAmarillas.Name = "txtAmarillas";
            this.txtAmarillas.Size = new System.Drawing.Size(176, 22);
            this.txtAmarillas.TabIndex = 9;
            // 
            // txtRoja
            // 
            this.txtRoja.Location = new System.Drawing.Point(308, 160);
            this.txtRoja.Name = "txtRoja";
            this.txtRoja.Size = new System.Drawing.Size(176, 22);
            this.txtRoja.TabIndex = 6;
            // 
            // txtTiempoJugado
            // 
            this.txtTiempoJugado.Location = new System.Drawing.Point(308, 207);
            this.txtTiempoJugado.Name = "txtTiempoJugado";
            this.txtTiempoJugado.Size = new System.Drawing.Size(176, 22);
            this.txtTiempoJugado.TabIndex = 6;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(491, 210);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(103, 16);
            this.label12.TabIndex = 5;
            this.label12.Text = "Tiempo Jugado";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(501, 166);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(43, 16);
            this.label13.TabIndex = 4;
            this.label13.Text = "Rojas";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(501, 125);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(63, 16);
            this.label14.TabIndex = 3;
            this.label14.Text = "Amarillas";
            // 
            // btnAGREGAR
            // 
            this.btnAGREGAR.Location = new System.Drawing.Point(600, 207);
            this.btnAGREGAR.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnAGREGAR.Name = "btnAGREGAR";
            this.btnAGREGAR.Size = new System.Drawing.Size(190, 23);
            this.btnAGREGAR.TabIndex = 19;
            this.btnAGREGAR.Text = "AGREGAR";
            this.btnAGREGAR.UseVisualStyleBackColor = true;
            this.btnAGREGAR.Click += new System.EventHandler(this.btnAGREGAR_Click);
            // 
            // ColJugador
            // 
            this.ColJugador.HeaderText = "Jugador";
            this.ColJugador.MinimumWidth = 6;
            this.ColJugador.Name = "ColJugador";
            this.ColJugador.ReadOnly = true;
            this.ColJugador.Width = 125;
            // 
            // ColAsistencias
            // 
            this.ColAsistencias.HeaderText = "Asistencias";
            this.ColAsistencias.MinimumWidth = 6;
            this.ColAsistencias.Name = "ColAsistencias";
            this.ColAsistencias.ReadOnly = true;
            this.ColAsistencias.Width = 125;
            // 
            // ColGoles
            // 
            this.ColGoles.HeaderText = "Goles";
            this.ColGoles.MinimumWidth = 6;
            this.ColGoles.Name = "ColGoles";
            this.ColGoles.ReadOnly = true;
            this.ColGoles.Width = 125;
            // 
            // ColAmarilla
            // 
            this.ColAmarilla.HeaderText = "Amarilla";
            this.ColAmarilla.MinimumWidth = 6;
            this.ColAmarilla.Name = "ColAmarilla";
            this.ColAmarilla.ReadOnly = true;
            this.ColAmarilla.Width = 80;
            // 
            // ColRojas
            // 
            this.ColRojas.HeaderText = "Roja";
            this.ColRojas.MinimumWidth = 6;
            this.ColRojas.Name = "ColRojas";
            this.ColRojas.ReadOnly = true;
            this.ColRojas.Width = 80;
            // 
            // ColTiempo
            // 
            this.ColTiempo.HeaderText = "Tiempo Jugado";
            this.ColTiempo.MinimumWidth = 6;
            this.ColTiempo.Name = "ColTiempo";
            this.ColTiempo.ReadOnly = true;
            this.ColTiempo.Width = 125;
            // 
            // btnBorrar
            // 
            this.btnBorrar.HeaderText = "Borrar";
            this.btnBorrar.MinimumWidth = 6;
            this.btnBorrar.Name = "btnBorrar";
            this.btnBorrar.ReadOnly = true;
            this.btnBorrar.Width = 125;
            // 
            // FrmPartido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(823, 509);
            this.Controls.Add(this.btnAGREGAR);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.txtTiempoJugado);
            this.Controls.Add(this.txtAmarillas);
            this.Controls.Add(this.txtRoja);
            this.Controls.Add(this.cboJugador);
            this.Controls.Add(this.txtAsiis);
            this.Controls.Add(this.dgvEstadisticas);
            this.Controls.Add(this.txtGoles);
            this.Controls.Add(this.btnConfirmar);
            this.Controls.Add(this.btnVolver);
            this.Controls.Add(this.cboTeporada);
            this.Controls.Add(this.dtpFecha);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.txtGolesVisitante);
            this.Controls.Add(this.txtGolesLoacal);
            this.Controls.Add(this.cboVisitante);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.cboLocal);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "FrmPartido";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.FrmPartido_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvEstadisticas)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cboLocal;
        private System.Windows.Forms.ComboBox cboVisitante;
        private System.Windows.Forms.TextBox txtGolesLoacal;
        private System.Windows.Forms.TextBox txtGolesVisitante;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private System.Windows.Forms.ComboBox cboTeporada;
        private System.Windows.Forms.Button btnVolver;
        private System.Windows.Forms.Button btnConfirmar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView dgvEstadisticas;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cboJugador;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtGoles;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtAsiis;
        private System.Windows.Forms.TextBox txtAmarillas;
        private System.Windows.Forms.TextBox txtRoja;
        private System.Windows.Forms.TextBox txtTiempoJugado;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button btnAGREGAR;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColJugador;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColAsistencias;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColGoles;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColAmarilla;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColRojas;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColTiempo;
        private System.Windows.Forms.DataGridViewButtonColumn btnBorrar;
    }
}

