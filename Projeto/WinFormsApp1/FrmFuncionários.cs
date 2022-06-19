using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using Microsoft.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace WinFormsApp1
{
    public partial class FrmFuncionários : Form
    {
        public FrmFuncionários()
        {
            InitializeComponent();
        }

        private void ButtonAdicionarCliente_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void ButtonRemoverFuncionário_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String Query = "delete from Funcionário WHERE ID="+textBox3.Text;
            SqlConnection con = new SqlConnection(connectionStr);
            con.Open();
            SqlCommand sc = new SqlCommand(Query, con);
            sc.ExecuteNonQuery();
            con.Close();
        }

        private void ButtonAdicionarTipoFuncionário_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String Query = "INSERT INTO TipoFunc VALUES ("+ textBox4.Text+", '"+textBox5.Text+"' )";
            SqlConnection con = new SqlConnection(connectionStr);
            con.Open();
            SqlCommand sc = new SqlCommand(Query, con);
            sc.ExecuteNonQuery();
            con.Close();
        }
    }
}
