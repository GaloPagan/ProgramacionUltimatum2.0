using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace EquipoProgramacionEPF.Datos
{
    internal class DBHelperDao
    {
        private static DBHelperDao instance;
        private SqlConnection connection;

        public DBHelperDao()
        {
            connection = new SqlConnection(@"Data Source=DESKTOP-8C00J2S\ULTIMOSQL;Initial Catalog=ClubPrograIIOficial;Integrated Security=True");
        }

        public static DBHelperDao getInstance()
        {
            if (instance == null) { instance = new DBHelperDao(); }
            return instance;
        }

        public SqlConnection GetConnection()
        {
            return connection;
        }

        public DataTable ConsultarSP(string nombreSP)
        {
            connection.Open();
            SqlCommand command = new SqlCommand(nombreSP, connection);
            command.CommandType = CommandType.StoredProcedure;
            DataTable dataTable = new DataTable();
            dataTable.Load(command.ExecuteReader());
            connection.Close();
            return dataTable;
        }


        public DataTable ConsultarBD(string consulta)
        {
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            command.CommandText = consulta;
            dt.Load(command.ExecuteReader());

            connection.Close();
            return dt;
        }
    }
}
