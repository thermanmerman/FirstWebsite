using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace Default
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=maxmckelvey;password=G@torade123;Connection Timeout=3000;database=acuity");
            MySqlCommand cmd = new MySqlCommand("select * from userinfo where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("password", TextBox2.Text);
            Session["username"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Server.Transfer("Redirectpage.aspx");
                //Response.Redirect("~/Redirectpage.aspx", true);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
                
            }
            else
            {
                Label1.Text = "Your username or password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }


        }
    }
}