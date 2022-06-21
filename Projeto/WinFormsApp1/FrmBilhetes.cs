using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;



namespace WinFormsApp1
{
    public partial class FrmBilhetes : Form
    {
        public FrmBilhetes()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonCriarBilhete_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

         try
            {
                SqlConnection con = new SqlConnection(connectionStr);
                con.Open();
                SqlCommand sc = new SqlCommand("AddBilhete", con);
                sc.CommandType = CommandType.StoredProcedure;
                sc.Parameters.Add(new SqlParameter("@numcc", textBox3.Text));
                sc.Parameters.Add(new SqlParameter("@partida", textBox1.Text));
                sc.Parameters.Add(new SqlParameter("@chegada", textBox2.Text));
                sc.Parameters.Add("@output", SqlDbType.VarChar, 250);

                sc.Parameters["@output"].Direction = ParameterDirection.Output;

                sc.ExecuteNonQuery();
                MessageBox.Show((Convert.ToString(sc.Parameters["@output"].Value)));


                con.Close();

           }
           catch
           {
                MessageBox.Show("Erro a inserir dados\nTem a certeza que existem as Estações");
            }
            
        }

        private void label22_Click(object sender, EventArgs e)
        {

        }

        private void textBox16_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
