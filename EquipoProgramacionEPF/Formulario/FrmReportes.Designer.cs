namespace EquipoProgramacionEPF.Formulario
{
    partial class FrmReportes
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
            this.dsPartidos1 = new EquipoProgramacionEPF.Reporte.dsPartidos1();
            this.tablaPartidosBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tablaPartidosTableAdapter = new EquipoProgramacionEPF.Reporte.dsPartidos1TableAdapters.TablaPartidosTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.dsPartidos1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablaPartidosBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.tablaPartidosBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "EquipoProgramacionEPF.Reporte.RptPartidos.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(800, 450);
            this.reportViewer1.TabIndex = 0;
            // 
            // dsPartidos1
            // 
            this.dsPartidos1.DataSetName = "dsPartidos1";
            this.dsPartidos1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tablaPartidosBindingSource
            // 
            this.tablaPartidosBindingSource.DataMember = "TablaPartidos";
            this.tablaPartidosBindingSource.DataSource = this.dsPartidos1;
            // 
            // tablaPartidosTableAdapter
            // 
            this.tablaPartidosTableAdapter.ClearBeforeFill = true;
            // 
            // FrmReportes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FrmReportes";
            this.Text = "FrmReportes";
            this.Load += new System.EventHandler(this.FrmReportes_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dsPartidos1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablaPartidosBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private Reporte.dsPartidos1 dsPartidos1;
        private System.Windows.Forms.BindingSource tablaPartidosBindingSource;
        private Reporte.dsPartidos1TableAdapters.TablaPartidosTableAdapter tablaPartidosTableAdapter;
    }
}