namespace EquipoProgramacionEPF.Formulario
{
    partial class FrmSignUp
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtUserSign = new System.Windows.Forms.TextBox();
            this.txtPassSign = new System.Windows.Forms.TextBox();
            this.txtPassRepSign = new System.Windows.Forms.TextBox();
            this.btnAceptarSign = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnCancelarSign = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lLabelIng = new System.Windows.Forms.LinkLabel();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.groupBox1.Controls.Add(this.lLabelIng);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.groupBox4);
            this.groupBox1.Controls.Add(this.groupBox3);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.btnCancelarSign);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.btnAceptarSign);
            this.groupBox1.Location = new System.Drawing.Point(117, 37);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(368, 432);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            // 
            // txtUserSign
            // 
            this.txtUserSign.BackColor = System.Drawing.SystemColors.Control;
            this.txtUserSign.Location = new System.Drawing.Point(10, 17);
            this.txtUserSign.Name = "txtUserSign";
            this.txtUserSign.Size = new System.Drawing.Size(226, 20);
            this.txtUserSign.TabIndex = 2;
            // 
            // txtPassSign
            // 
            this.txtPassSign.BackColor = System.Drawing.SystemColors.Control;
            this.txtPassSign.Location = new System.Drawing.Point(10, 17);
            this.txtPassSign.Name = "txtPassSign";
            this.txtPassSign.Size = new System.Drawing.Size(226, 20);
            this.txtPassSign.TabIndex = 3;
            this.txtPassSign.UseSystemPasswordChar = true;
            // 
            // txtPassRepSign
            // 
            this.txtPassRepSign.BackColor = System.Drawing.SystemColors.Control;
            this.txtPassRepSign.Location = new System.Drawing.Point(10, 17);
            this.txtPassRepSign.Name = "txtPassRepSign";
            this.txtPassRepSign.Size = new System.Drawing.Size(226, 20);
            this.txtPassRepSign.TabIndex = 4;
            this.txtPassRepSign.UseSystemPasswordChar = true;
            // 
            // btnAceptarSign
            // 
            this.btnAceptarSign.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.btnAceptarSign.Location = new System.Drawing.Point(88, 324);
            this.btnAceptarSign.Name = "btnAceptarSign";
            this.btnAceptarSign.Size = new System.Drawing.Size(192, 33);
            this.btnAceptarSign.TabIndex = 7;
            this.btnAceptarSign.Text = "Aceptar";
            this.btnAceptarSign.UseVisualStyleBackColor = false;
            this.btnAceptarSign.Click += new System.EventHandler(this.btnAceptarSign_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(198, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(109, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Entre 8-20 caracteres";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(74, 41);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(224, 25);
            this.label5.TabIndex = 8;
            this.label5.Text = "Creación de usuario";
            // 
            // btnCancelarSign
            // 
            this.btnCancelarSign.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnCancelarSign.Location = new System.Drawing.Point(88, 374);
            this.btnCancelarSign.Name = "btnCancelarSign";
            this.btnCancelarSign.Size = new System.Drawing.Size(192, 33);
            this.btnCancelarSign.TabIndex = 9;
            this.btnCancelarSign.Text = "Cancelar";
            this.btnCancelarSign.UseVisualStyleBackColor = false;
            this.btnCancelarSign.Click += new System.EventHandler(this.btnCancelarSign_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtPassSign);
            this.groupBox2.Location = new System.Drawing.Point(65, 170);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(242, 43);
            this.groupBox2.TabIndex = 10;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Contraseña";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtUserSign);
            this.groupBox3.Location = new System.Drawing.Point(65, 111);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(242, 43);
            this.groupBox3.TabIndex = 11;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Usuario";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.txtPassRepSign);
            this.groupBox4.Location = new System.Drawing.Point(65, 230);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(242, 43);
            this.groupBox4.TabIndex = 12;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Repetir contraseña";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(65, 280);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(115, 13);
            this.label1.TabIndex = 13;
            this.label1.Text = "¿Ya tiene una cuenta?";
            // 
            // lLabelIng
            // 
            this.lLabelIng.AutoSize = true;
            this.lLabelIng.Location = new System.Drawing.Point(176, 280);
            this.lLabelIng.Name = "lLabelIng";
            this.lLabelIng.Size = new System.Drawing.Size(45, 13);
            this.lLabelIng.TabIndex = 14;
            this.lLabelIng.TabStop = true;
            this.lLabelIng.Text = "Ingresar";
            this.lLabelIng.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lLabelIng_LinkClicked);
            // 
            // FrmSignUp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleGreen;
            this.ClientSize = new System.Drawing.Size(606, 507);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmSignUp";
            this.Text = "FrmSignUp";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtPassRepSign;
        private System.Windows.Forms.TextBox txtPassSign;
        private System.Windows.Forms.TextBox txtUserSign;
        private System.Windows.Forms.Button btnAceptarSign;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnCancelarSign;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.LinkLabel lLabelIng;
    }
}