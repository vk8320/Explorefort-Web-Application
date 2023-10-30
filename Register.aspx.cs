using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExploreFort_Application
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        { 

        }
        protected void j_TextChanged(object sender, EventArgs e)
        {

            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = "server=localhost;User id=root;database = explore_fort;Password=Vaibhavk@123";



            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into users" +
                "(UName, email, username, UPassword, phone, age)" +
                "values" +
                "(@Name,@Email,@Username,@Password,@Phone,@Age)", conn);

            cmd.Parameters.AddWithValue("@Username",txtUsername.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Name", txtFn.Text);
            cmd.Parameters.AddWithValue("@Password", txtp1.Text);
            cmd.Parameters.AddWithValue("@Phone", txtM.Text);
            cmd.Parameters.AddWithValue("@Age", txtA.Text);

            cmd.ExecuteNonQuery();

            txtFn.Text = "";
            txtEmail.Text = "";
            txtUsername.Text = "";
            txtp1.Text = "";
            txtM.Text = "";
            txtA.Text = "";
            Response.Write("<script>alert('Created Account Successfully!!!')</script>");

        }


    }
}