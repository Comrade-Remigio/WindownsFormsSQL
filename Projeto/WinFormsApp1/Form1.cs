using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using System.Windows;

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }



        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
             String connectionStr = "Data Source=localhost;Initial Catalog=p8g10RedeComboios;Integrated Security=True; Encrypt=False;";
             SqlConnection con = new SqlConnection(connectionStr);
            String SQLcommnad = "Insert INTO Estação VALUES ('" + textBox1.Text + "',"+ TextBoxBaby.Text+","+ textBox3.Text + ");";
             con.Open();
             SqlCommand SC = new SqlCommand(SQLcommnad, con);
             SC.ExecuteNonQuery();
             Console.WriteLine("Here we execute");
             MessageBox.Show("Connection Open  !");
            
             con.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }


        private void textBox2_TextChanged_2(object sender, EventArgs e)
        {

        }
    }
}
