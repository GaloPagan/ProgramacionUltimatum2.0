namespace EquipoProgramacionEPF.Formulario
{
    partial class FrmRptGoleadores
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
            this.dSGoleadores = new EquipoProgramacionEPF.Reporte.DSGoleadores();
            this.tGoleadoresBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.t_GoleadoresTableAdapter = new EquipoProgramacionEPF.Reporte.DSGoleadoresTableAdapters.T_GoleadoresTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.dSGoleadores)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tGoleadoresBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.tGoleadoresBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "EquipoProgramacionEPF.Reporte.RptGoleadores.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(800, 450);
            this.reportViewer1.TabIndex = 0;
            // 
            // dSGoleadores
            // 
            this.dSGoleadores.DataSetName = "DSGoleadores";
            this.dSGoleadores.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tGoleadoresBindingSource
            // 
            this.tGoleadoresBindingSource.DataMember = "T_Goleadores";
            this.tGoleadoresBindingSource.DataSource = this.dSGoleadores;
            // 
            // t_GoleadoresTableAdapter
            // 
            this.t_GoleadoresTableAdapter.ClearBeforeFill = true;
            // 
            // FrmRptGoleadores
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FrmRptGoleadores";
            this.Text = "FrmRptGoleadores";
            this.Load += new System.EventHandler(this.FrmRptGoleadores_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dSGoleadores)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tGoleadoresBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private Reporte.DSGoleadores dSGoleadores;
        private System.Windows.Forms.BindingSource tGoleadoresBindingSource;
        private Reporte.DSGoleadoresTableAdapters.T_GoleadoresTableAdapter t_GoleadoresTableAdapter;
    }
}