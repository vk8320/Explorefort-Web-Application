using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace ExploreFort_Application
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSubmit(object sender, EventArgs e)
        {

            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = "server=localhost;User id=root;database = explore_fort;Password=Vaibhavk@123";



            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into feedback" +
                "(UserName,UserEmail,UserSubject,UserMessage)" +
                "values" +
                "(@Name,@Email,@Subject,@Message)", conn);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Subject", txtSub.Text);
            cmd.Parameters.AddWithValue("@Message", txtMessage.Text);


            cmd.ExecuteNonQuery();

            txtName.Text = "";
            txtEmail.Text = "";
            txtSub.Text = "";
            txtMessage.Text = "";
            Response.Write("<script>alert('Feedback Added')</script>");



        }

    }
}