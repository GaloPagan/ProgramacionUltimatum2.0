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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPartido));
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
            this.ColJugador = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColJugadorNombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColAsistencias = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColGoles = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColAmarilla = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColRojas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColTiempo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnBorrar = new System.Windows.Forms.DataGridViewButtonColumn();
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEstadisticas)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(20, 11);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(95, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "EQUIPO LOCAL";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(407, 10);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(114, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "EQUIPO VISITANTE";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(20, 50);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(92, 17);
            this.label4.TabIndex = 3;
            this.label4.Text = "GOLES LOCAL";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(407, 38);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(119, 17);
            this.label5.TabIndex = 4;
            this.label5.Text = "GOLES VISITANTES";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(20, 73);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(48, 17);
            this.label6.TabIndex = 5;
            this.label6.Text = "FECHA";
            // 
            // cboLocal
            // 
            this.cboLocal.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.cboLocal.FormattingEnabled = true;
            this.cboLocal.Location = new System.Drawing.Point(113, 12);
            this.cboLocal.Name = "cboLocal";
            this.cboLocal.Size = new System.Drawing.Size(133, 21);
            this.cboLocal.TabIndex = 6;
            this.cboLocal.SelectedIndexChanged += new System.EventHandler(this.cboLocal_SelectedIndexChanged);
            // 
            // cboVisitante
            // 
            this.cboVisitante.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.cboVisitante.FormattingEnabled = true;
            this.cboVisitante.Location = new System.Drawing.Point(270, 10);
            this.cboVisitante.Name = "cboVisitante";
            this.cboVisitante.Size = new System.Drawing.Size(133, 21);
            this.cboVisitante.TabIndex = 7;
            // 
            // txtGolesLoacal
            // 
            this.txtGolesLoacal.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtGolesLoacal.Location = new System.Drawing.Point(113, 46);
            this.txtGolesLoacal.Name = "txtGolesLoacal";
            this.txtGolesLoacal.Size = new System.Drawing.Size(133, 20);
            this.txtGolesLoacal.TabIndex = 8;
            // 
            // txtGolesVisitante
            // 
            this.txtGolesVisitante.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtGolesVisitante.Location = new System.Drawing.Point(270, 46);
            this.txtGolesVisitante.Name = "txtGolesVisitante";
            this.txtGolesVisitante.Size = new System.Drawing.Size(133, 20);
            this.txtGolesVisitante.TabIndex = 9;
            // 
            // dtpFecha
            // 
            this.dtpFecha.CalendarMonthBackground = System.Drawing.SystemColors.InactiveCaption;
            this.dtpFecha.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpFecha.Location = new System.Drawing.Point(113, 72);
            this.dtpFecha.Name = "dtpFecha";
            this.dtpFecha.Size = new System.Drawing.Size(133, 20);
            this.dtpFecha.TabIndex = 11;
            // 
            // cboTeporada
            // 
            this.cboTeporada.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.cboTeporada.FormattingEnabled = true;
            this.cboTeporada.Location = new System.Drawing.Point(270, 74);
            this.cboTeporada.Name = "cboTeporada";
            this.cboTeporada.Size = new System.Drawing.Size(133, 21);
            this.cboTeporada.TabIndex = 12;
            // 
            // btnVolver
            // 
            this.btnVolver.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btnVolver.Location = new System.Drawing.Point(22, 382);
            this.btnVolver.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnVolver.Name = "btnVolver";
            this.btnVolver.Size = new System.Drawing.Size(94, 89);
            this.btnVolver.TabIndex = 13;
            this.btnVolver.Text = "VOLVER";
            this.btnVolver.UseVisualStyleBackColor = false;
            this.btnVolver.Click += new System.EventHandler(this.btnVolver_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.BackColor = System.Drawing.Color.White;
            this.btnConfirmar.Location = new System.Drawing.Point(122, 382);
            this.btnConfirmar.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(454, 24);
            this.btnConfirmar.TabIndex = 14;
            this.btnConfirmar.Text = "CONFIRMAR";
            this.btnConfirmar.UseVisualStyleBackColor = false;
            this.btnConfirmar.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btnSalir.Location = new System.Drawing.Point(580, 382);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(94, 89);
            this.btnSalir.TabIndex = 15;
            this.btnSalir.Text = "SALIR";
            this.btnSalir.UseVisualStyleBackColor = false;
            this.btnSalir.Click += new System.EventHandler(this.button3_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(407, 72);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(82, 17);
            this.label7.TabIndex = 16;
            this.label7.Text = "TEMPORADA";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(249, 15);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(18, 13);
            this.label1.TabIndex = 17;
            this.label1.Text = "vs";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(250, 51);
            this.label8.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(18, 13);
            this.label8.TabIndex = 18;
            this.label8.Text = "vs";
            // 
            // dgvEstadisticas
            // 
            this.dgvEstadisticas.AllowUserToAddRows = false;
            this.dgvEstadisticas.AllowUserToDeleteRows = false;
            this.dgvEstadisticas.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.dgvEstadisticas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEstadisticas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColJugador,
            this.ColJugadorNombre,
            this.ColAsistencias,
            this.ColGoles,
            this.ColAmarilla,
            this.ColRojas,
            this.ColTiempo,
            this.btnBorrar});
            this.dgvEstadisticas.Location = new System.Drawing.Point(22, 202);
            this.dgvEstadisticas.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dgvEstadisticas.Name = "dgvEstadisticas";
            this.dgvEstadisticas.ReadOnly = true;
            this.dgvEstadisticas.RowHeadersWidth = 51;
            this.dgvEstadisticas.RowTemplate.Height = 24;
            this.dgvEstadisticas.Size = new System.Drawing.Size(650, 176);
            this.dgvEstadisticas.TabIndex = 12;
            this.dgvEstadisticas.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEstadisticas_CellContentClick);
            // 
            // ColJugador
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.ColJugador.DefaultCellStyle = dataGridViewCellStyle1;
            this.ColJugador.HeaderText = "Jugador";
            this.ColJugador.MinimumWidth = 6;
            this.ColJugador.Name = "ColJugador";
            this.ColJugador.ReadOnly = true;
            this.ColJugador.Width = 125;
            // 
            // ColJugadorNombre
            // 
            this.ColJugadorNombre.HeaderText = "Nombre Jugador";
            this.ColJugadorNombre.MinimumWidth = 6;
            this.ColJugadorNombre.Name = "ColJugadorNombre";
            this.ColJugadorNombre.ReadOnly = true;
            this.ColJugadorNombre.Width = 125;
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
            this.btnBorrar.Width = 145;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(20, 103);
            this.label9.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(65, 17);
            this.label9.TabIndex = 0;
            this.label9.Text = "JUGADOR";
            // 
            // cboJugador
            // 
            this.cboJugador.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.cboJugador.FormattingEnabled = true;
            this.cboJugador.Location = new System.Drawing.Point(113, 100);
            this.cboJugador.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cboJugador.Name = "cboJugador";
            this.cboJugador.Size = new System.Drawing.Size(133, 21);
            this.cboJugador.TabIndex = 11;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(20, 134);
            this.label10.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(48, 17);
            this.label10.TabIndex = 1;
            this.label10.Text = "GOLES";
            // 
            // txtGoles
            // 
            this.txtGoles.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtGoles.Location = new System.Drawing.Point(113, 135);
            this.txtGoles.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtGoles.Name = "txtGoles";
            this.txtGoles.Size = new System.Drawing.Size(133, 20);
            this.txtGoles.TabIndex = 8;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(20, 171);
            this.label11.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(87, 17);
            this.label11.TabIndex = 2;
            this.label11.Text = "ASISTENCIAS";
            // 
            // txtAsiis
            // 
            this.txtAsiis.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtAsiis.Location = new System.Drawing.Point(113, 173);
            this.txtAsiis.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtAsiis.Name = "txtAsiis";
            this.txtAsiis.Size = new System.Drawing.Size(133, 20);
            this.txtAsiis.TabIndex = 7;
            // 
            // txtAmarillas
            // 
            this.txtAmarillas.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtAmarillas.Location = new System.Drawing.Point(270, 102);
            this.txtAmarillas.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtAmarillas.Name = "txtAmarillas";
            this.txtAmarillas.Size = new System.Drawing.Size(133, 20);
            this.txtAmarillas.TabIndex = 9;
            // 
            // txtRoja
            // 
            this.txtRoja.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtRoja.Location = new System.Drawing.Point(270, 135);
            this.txtRoja.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtRoja.Name = "txtRoja";
            this.txtRoja.Size = new System.Drawing.Size(133, 20);
            this.txtRoja.TabIndex = 6;
            // 
            // txtTiempoJugado
            // 
            this.txtTiempoJugado.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.txtTiempoJugado.Location = new System.Drawing.Point(270, 173);
            this.txtTiempoJugado.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtTiempoJugado.Name = "txtTiempoJugado";
            this.txtTiempoJugado.Size = new System.Drawing.Size(133, 20);
            this.txtTiempoJugado.TabIndex = 6;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(407, 172);
            this.label12.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(103, 17);
            this.label12.TabIndex = 5;
            this.label12.Text = "TIEMPO JUGADO";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(407, 135);
            this.label13.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(48, 17);
            this.label13.TabIndex = 4;
            this.label13.Text = "ROJAS";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(407, 103);
            this.label14.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(78, 17);
            this.label14.TabIndex = 3;
            this.label14.Text = "AMARILLAS";
            // 
            // btnAGREGAR
            // 
            this.btnAGREGAR.Location = new System.Drawing.Point(530, 173);
            this.btnAGREGAR.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnAGREGAR.Name = "btnAGREGAR";
            this.btnAGREGAR.Size = new System.Drawing.Size(142, 19);
            this.btnAGREGAR.TabIndex = 19;
            this.btnAGREGAR.Text = "AGREGAR";
            this.btnAGREGAR.UseVisualStyleBackColor = true;
            this.btnAGREGAR.Click += new System.EventHandler(this.btnAGREGAR_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(530, 10);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(142, 159);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.pictureBox1.TabIndex = 20;
            this.pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(122, 410);
            this.pictureBox2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(454, 61);
            this.pictureBox2.TabIndex = 21;
            this.pictureBox2.TabStop = false;
            // 
            // FrmPartido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.CornflowerBlue;
            this.ClientSize = new System.Drawing.Size(688, 474);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
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
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "FrmPartido";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.FrmPartido_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvEstadisticas)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
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
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColJugador;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColJugadorNombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColAsistencias;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColGoles;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColAmarilla;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColRojas;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColTiempo;
        private System.Windows.Forms.DataGridViewButtonColumn btnBorrar;
    }
}

