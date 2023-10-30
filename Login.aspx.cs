
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExploreFort_Application
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
           MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = "server=localhost;User id=root;database = explore_fort;Password=Vaibhavk@123";



            MySqlCommand cmd = new MySqlCommand("select * from users where username = @username and  UPassword = @Password", conn);

            cmd.Parameters.AddWithValue("@username", txtFn.Text);
            cmd.Parameters.AddWithValue("@Password", txtp1.Text);
            Session["Username"] = txtFn.Text;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            cmd.ExecuteNonQuery();
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Login Success')</script>");
                Response.Redirect("/User/UserHome.aspx");
                
            }
        }
    }
}