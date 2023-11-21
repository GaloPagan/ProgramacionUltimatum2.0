namespace EquipoProgramacionEPF.Formulario
{
    partial class FrmRptPosiciones
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.tPosicionesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dSPosiciones = new EquipoProgramacionEPF.Reporte.DSPosiciones();
            this.t_PosicionesTableAdapter = new EquipoProgramacionEPF.Reporte.DSPosicionesTableAdapters.T_PosicionesTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.tPosicionesBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSPosiciones)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.tPosicionesBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "EquipoProgramacionEPF.Reporte.RptPosiciones.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(714, 450);
            this.reportViewer1.TabIndex = 0;
            // 
            // tPosicionesBindingSource
            // 
            this.tPosicionesBindingSource.DataMember = "T_Posiciones";
            this.tPosicionesBindingSource.DataSource = this.dSPosiciones;
            // 
            // dSPosiciones
            // 
            this.dSPosiciones.DataSetName = "DSPosiciones";
            this.dSPosiciones.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // t_PosicionesTableAdapter
            // 
            this.t_PosicionesTableAdapter.ClearBeforeFill = true;
            // 
            // FrmRptPosiciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(714, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FrmRptPosiciones";
            this.Text = "FrmRptPosiciones";
            this.Load += new System.EventHandler(this.FrmRptPosiciones_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tPosicionesBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSPosiciones)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private Reporte.DSPosiciones dSPosiciones;
        private System.Windows.Forms.BindingSource tPosicionesBindingSource;
        private Reporte.DSPosicionesTableAdapters.T_PosicionesTableAdapter t_PosicionesTableAdapter;
    }
}