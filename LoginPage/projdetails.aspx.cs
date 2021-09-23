using System;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace LoginPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=maxmckelvey;password=G@torade123;Connection Timeout=3000;database=acuity");

        private DataTable GetData()
        {
            using (con)
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM customers WHERE contact_id=" + Request.QueryString["contact_id"].ToString(), con))
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
            MySqlDataAdapter adapt = new MySqlDataAdapter("SELECT * FROM customers WHERE contact_id=" + Request.QueryString["contact_id"].ToString(), con);
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

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            foreach (DataListItem item in dlcustomers.Items)
            {
                foreach (TextBox txt in item.Controls.OfType<TextBox>())
                {
                    txt.ReadOnly = false;
                    txt.Enabled = true;
                    btn.Enabled = false;
                    btn.Visible = false;


                }

                Button save = item.FindControl("save") as Button;
                save.Visible = true;
                save.Enabled = true;

            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            foreach (DataListItem item in dlcustomers.Items) //Looping through the datalist full of customer data
            {
                foreach (TextBox txt in item.Controls.OfType<TextBox>()) //Finds every textbox in that datalist
                {
                    string value = txt.Text;
                    MySqlCommand cmd = new MySqlCommand("UPDATE customers SET " + txt.ID.ToString() + "=" + "'" + value + "' WHERE contact_id=" + Request.QueryString["contact_id"].ToString(), con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    txt.ReadOnly = true;
                    txt.Enabled = false;
                    btn.Enabled = false;
                    btn.Visible = false;


                }
                Button edit = item.FindControl("edit") as Button;
                edit.Visible = true;
                edit.Enabled = true;
            }
            ShowData();
        }
    }
}