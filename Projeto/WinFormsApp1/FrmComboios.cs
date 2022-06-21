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
    public partial class FrmComboios : Form
    {
        public FrmComboios()
        {
            InitializeComponent();
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void label21_Click(object sender, EventArgs e)
        {

        }


        private void buttonAdicionarComboio_Click(object sender, EventArgs e)
        {

            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            try { 
                SqlConnection con = new SqlConnection(connectionStr);
                con.Open();
                SqlCommand sc = new SqlCommand("CreateComboio", con);
                sc.CommandType = CommandType.StoredProcedure;
                if (textBox5.Text == "")
                {
                    sc.Parameters.Add(new SqlParameter("@Revisor", DBNull.Value));
                }
                else
                {
                    sc.Parameters.Add(new SqlParameter("@Revisor", textBox5.Text));
                }
                if (textBox4.Text == "")
                {
                    sc.Parameters.Add(new SqlParameter("@Condutor", DBNull.Value));

                }
                else
                {
                    sc.Parameters.Add(new SqlParameter("@Condutor", textBox4.Text));
                }

                sc.ExecuteNonQuery();
                con.Close();

            }
            catch
            {
                MessageBox.Show("Someting went Wrong inserting Data");
            }
        }

        private void buttonRemoverComboio_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String Query = "DELETE FROM Comboio WHERE id="+textBox2.Text+"";
            SqlConnection con = new SqlConnection(connectionStr);
            con.Open();
            SqlCommand sc = new SqlCommand(Query, con);
            sc.ExecuteNonQuery();
            con.Close();
        }

        private void buttonUpdateComboio_Click(object sender, EventArgs e)
        {
            String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            try
            {
                SqlConnection con = new SqlConnection(connectionStr);
                con.Open();
                SqlCommand sc = new SqlCommand("alterComboio", con);
                sc.CommandType = CommandType.StoredProcedure;
                sc.Parameters.Add(new SqlParameter("@ID", textBox8.Text));
                if (textBox7.Text == "")
                {
                    sc.Parameters.Add(new SqlParameter("@Revisor", DBNull.Value));
                }
                else
                {
                    sc.Parameters.Add(new SqlParameter("@Revisor", textBox7.Text));
                }
                if (textBox6.Text == "")
                {
                    sc.Parameters.Add(new SqlParameter("@Condutor", DBNull.Value));

                }
                else
                {
                    sc.Parameters.Add(new SqlParameter("@Condutor", textBox6.Text));
                }

                sc.ExecuteNonQuery();
                con.Close();

            }
            catch
            {
                MessageBox.Show("Someting went Wrong inserting Data \n Tenha a certeza que o Comboio ou Funcionários existem");
            }

        }
    }
}
