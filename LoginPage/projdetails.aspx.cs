using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;

namespace LoginPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=maxmckelvey;password=G@torade123;Connection Timeout=3000;database=acuity");
        private string name;
        public string Name { get { return name; } }

        private DataTable GetData()
        {
            using (con)
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM customers WHERE project_id=" + Request.QueryString["id"].ToString(), con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        protected void ShowData()
        {
            DataTable dt = new DataTable();
            con.Open();
            MySqlDataAdapter adapt = new MySqlDataAdapter("Select * from customers", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                dlcustomers.DataSource = dt;
                dlcustomers.DataBind();
            }
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                con.Open();
                DataTable ds = GetData();
                dlcustomers.DataSource = ds;
                dlcustomers.DataBind();
                con.Close();
            }
            name = Request.QueryString["name"].ToString();
            
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string id = btn.CommandArgument;
            foreach (DataListItem item in dlcustomers.Items)
            {
                TextBox tb = (TextBox)item.FindControl(btn.CommandArgument);
                if (tb.ID == id)
                {
                    tb.ReadOnly = false;
                    tb.Enabled = true;
                    btn.Enabled = false;
                    btn.Visible = false;

                    Button save = (Button)item.FindControl(btn.CommandArgument + "_save");
                    save.Visible = true;
                    save.Enabled = true;
                }
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string id = btn.CommandArgument;
            foreach(DataListItem item in dlcustomers.Items)
            {
                TextBox tb = (TextBox)item.FindControl(btn.CommandArgument);
                if (tb.ID == id)
                {

                    string value = tb.Text;
                    MySqlCommand cmd = new MySqlCommand("UPDATE customers SET " + btn.CommandArgument + " = " + "'" + value + "'" + " WHERE project_id=" + Request.QueryString["id"].ToString(), con);
                    
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    

                    btn.Visible = false;
                    btn.Enabled = false;

                    Button edit = (Button)item.FindControl(btn.CommandArgument + "_edit");
                    edit.Visible = true;
                    edit.Enabled = true;
                }
            }
            ShowData();
        }
    }
}