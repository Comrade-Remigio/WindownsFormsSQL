using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using System.Configuration;


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
            /*String connectionStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            String Query = "insert into Bilhete VALUES ('"+textBox1.Text +"','"+textBox2.Text+"',"+textBox16.Text+")";
            SqlConnection con = new SqlConnection(connectionStr);
            con.Open();
            SqlCommand sc = new SqlCommand(Query, con);
            sc.ExecuteNonQuery();
            con.Close();*/

        }

        private void label22_Click(object sender, EventArgs e)
        {

        }

        private void textBox16_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
