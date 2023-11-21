namespace EquipoProgramacionEPF.Formulario
{
    partial class FrmRptPartidos
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
            this.tPartidosBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dSPartidos = new EquipoProgramacionEPF.Reporte.DSPartidos();
            this.t_PartidosTableAdapter = new EquipoProgramacionEPF.Reporte.DSPartidosTableAdapters.T_PartidosTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.tPartidosBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSPartidos)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.tPartidosBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "EquipoProgramacionEPF.Reporte.RptPartidos.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1053, 450);
            this.reportViewer1.TabIndex = 0;
            // 
            // tPartidosBindingSource
            // 
            this.tPartidosBindingSource.DataMember = "T_Partidos";
            this.tPartidosBindingSource.DataSource = this.dSPartidos;
            // 
            // dSPartidos
            // 
            this.dSPartidos.DataSetName = "DSPartidos";
            this.dSPartidos.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // t_PartidosTableAdapter
            // 
            this.t_PartidosTableAdapter.ClearBeforeFill = true;
            // 
            // FrmRptPartidos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1053, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FrmRptPartidos";
            this.Text = "FrmRptPartidos";
            this.Load += new System.EventHandler(this.FrmRptPartidos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tPartidosBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSPartidos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private Reporte.DSPartidos dSPartidos;
        private System.Windows.Forms.BindingSource tPartidosBindingSource;
        private Reporte.DSPartidosTableAdapters.T_PartidosTableAdapter t_PartidosTableAdapter;
    }
}