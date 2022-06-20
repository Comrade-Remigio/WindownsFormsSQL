using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;

namespace WinFormsApp1
{
    public partial class FrmEstações : Form
    {
        public FrmEstações()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click_1(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void buttonAdicionarEstação_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            try {
                SqlConnection con = new SqlConnection(connectionStr);
                con.Open();
                SqlCommand sc = new SqlCommand("CreateEstacao", con);
                sc.CommandType = CommandType.StoredProcedure;
                sc.Parameters.Add(new SqlParameter("@NomeEstação", textboxNomeAdd.Text));
                sc.Parameters.Add(new SqlParameter("@N_Linhas", textBoxNlinhas.Text));
                sc.Parameters.Add(new SqlParameter("@N_Plataformas", textBoxNPlataformas.Text));

                sc.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
                MessageBox.Show("Someting went Wrong inserting Data");
            }
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void ButtonRemoverEstação_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String Query = "DELETE FROM Estação WHERE Nome='"+textBox4.Text+"'";
            SqlConnection con = new SqlConnection(connectionStr);
            con.Open();
            SqlCommand sc = new SqlCommand(Query, con);
            sc.ExecuteNonQuery();
            con.Close();
        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void ButtonAdicionarBalcão_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            try
            { 
                SqlConnection con = new SqlConnection(connectionStr);
                con.Open();
                SqlCommand sc = new SqlCommand("CreateBalcao", con);
                sc.CommandType = CommandType.StoredProcedure;
                sc.Parameters.Add(new SqlParameter("@NomeEstação", textBoxNomeEstaçãoBalcão.Text));
                sc.Parameters.Add(new SqlParameter("@N_Balcao", textBoxNBalcão.Text));
                sc.Parameters.Add(new SqlParameter("@N_Funcionario", textBoxNFuncionário.Text));

                sc.ExecuteNonQuery();
                con.Close();

            }
            catch
            {
                MessageBox.Show("Someting went Wrong inserting Data \n Tem a certeza que a Estação e o Funcionário Existem");
            }

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void BalcãoGrid()
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            SqlCommand command = new SqlCommand("select * from Balcão");
        //    SqlConnection con = new SqlConnection(connectionStr);
         //   con.Open();
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
         //   con.Close();
        }

        public DataTable SelectAll()
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection con = new SqlConnection(connectionStr))
                {
                    con.Open();
                    using (SqlCommand cmd = con.CreateCommand())
                    {
                        //sample stored procedure with parameter:
                        // "exec yourstoredProcedureName '" + param1+ "','" + param2+ "'";
                        cmd.CommandText = "select * from Balcão";
                        using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                        {
                            adp.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
            catch (Exception sqlEx)
            {
                Console.WriteLine(@"：Unable to establish a connection: {0}", sqlEx);
            }

            return dt;

        }


        private void button1_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            DataTable dt = SelectAll();
            dataGridView1.DataSource = dt;

        }
    }
}
