using System;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
using System.Linq;
using EncryptionDecryptionUsingSymmetricKey;

namespace Default
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=maxmckelvey;password=G@torade123;Connection Timeout=3000;database=acuity");

        private DataTable GetData()
        {
            //string constr = "datasource=localhost;port=3306;username=maxmckelvey;password=G@torade123;Connection Timeout=3000;database=acuity";
            using (con)
            {
                using (MySqlCommand cmd = new MySqlCommand("select * from projects", con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable("table"))
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                con.Open();
                DataTable ds = GetData();
                projects.DataSource = ds;
                projects.DataBind();
                con.Close();
            }

            //ENCRYPTION (WILL USE LATER)
            //string key = "b14ca5898a4e4133bbce2ea2315a1916";
            //string enc = AesOperation.EncryptString(key, Session["password"].ToString());
            
        }

        protected void proj_click(object sender, GridViewEditEventArgs e)
        {
            string id = projects.Rows[e.NewEditIndex].Cells[1].Text;
            string name = projects.Rows[e.NewEditIndex].Cells[3].Text;

            //Response.Redirect("http://72.167.225.116/plesk-site-preview/acuity.jetsdata.com/projdetails.aspx?id=" + id + "&name=" + name);
        }

        protected void subButt(object sender, EventArgs e)
        {
            //MySqlCommand cmd = new MySqlCommand("INSERT INTO projects (name, description) VALUES (@name, @description);", con);
            
                
            if (!Page.IsCallback)
            {
                string IdQuery = "SELECT id FROM projects ORDER BY id DESC LIMIT 1;";
                //MySqlDataAdapter Idquery = new MySqlDataAdapter(IdQuery, con);
                con.Open();
                MySqlCommand Idquery = new MySqlCommand(IdQuery, con);
                MySqlDataReader dr = Idquery.ExecuteReader();
                dr.Read();
                //Idquery.SelectCommand.ExecuteNonQuery();
                string stringID = dr.GetValue(0).ToString();
                con.Close();
                int previousID = 0;
                if (stringID != string.Empty)
                {
                    try
                    {
                        previousID = Int32.Parse(stringID);
                    }
                    catch
                    {
                        previousID = 0;
                    }

                    previousID = previousID += 1;

                }
                else
                {
                    Label1.Text += "Fields cannot be empty";
                }
                int newID = previousID;


                con.Open();

                string query = "INSERT INTO projects(id, name, description, created_date) VALUES(@id, @name, @description, @created_date);";
                MySqlCommand da = new MySqlCommand(query, con);

                TextBox txt1 = FindControl("tb") as TextBox;
                da.Parameters.AddWithValue("@name", txt1.Text);

                TextBox txt2 = FindControl("tb2") as TextBox;
                da.Parameters.AddWithValue("@description", txt2.Text);


                da.Parameters.AddWithValue("@id", newID);

                da.Parameters.AddWithValue("@created_date", DateTime.Now.ToString());



                da.ExecuteNonQuery();

                con.Close();

                string notequer = "INSERT INTO proj_notes(project_id, note) VALUES(@project_id, @note)";
                con.Open();
                MySqlCommand cm = new MySqlCommand(notequer, con);
                cm.Parameters.AddWithValue("@project_id", newID);
                cm.Parameters.AddWithValue("@note", string.Empty);
                cm.ExecuteNonQuery();
                con.Close();

                Label1.Text += "Data saved successfully";

                ShowData();

                
            }
            else
            {
                Label1.Text = "Page was postback";
            }



            submitButton.Enabled = false;
            submitButton.Visible = false;
            newProjTrigger.Enabled = true;
            newProjTrigger.Visible = true;
            newProjTrigger.Text = "New Project";
            tb.Enabled = false;
            tb.Visible = false;
            tb2.Enabled = false;
            tb2.Visible = false;

            tb.Text = "Project name";
            tb2.Text = "Project description";
        }

        protected void newProjbutt(object sender, EventArgs e)
        {
            Label1.Text = "";
            tb.Visible = true;
            tb.Enabled = true;
            tb2.Visible = true;
            tb2.Enabled = true;

            submitButton.Enabled = true;
            submitButton.Visible = true;
            newProjTrigger.Enabled = false;
            newProjTrigger.Visible = false;   
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string row = projects.Rows[e.RowIndex].Cells[2].Text;

            con.Open();
            MySqlCommand delquery = new MySqlCommand("DELETE FROM projects WHERE id=" + row, con);
            delquery.ExecuteNonQuery();
            con.Close();

            ShowData();

        }

        
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[2].Text;
                foreach (Button button in e.Row.Cells[2].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }
        }

        protected void ShowData()
        {
            DataTable dt = new DataTable();
            con.Open();
            MySqlDataAdapter adapt = new MySqlDataAdapter("Select id,name,description,created_date from projects", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                projects.DataSource = dt;
                projects.DataBind();
            }
            con.Close();
        }


        protected override object LoadPageStateFromPersistenceMedium()
        {
            return Session["password"];
        }
        protected override void SavePageStateToPersistenceMedium(object viewState)
        {
            Session["password"] = viewState;
        }

        protected void searchbutton_Click(object sender, EventArgs e)
        {
            Search();
        }

        private void Search()
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            
            string sql = "SELECT id, name, description, created_date FROM projects";
            string txt = sqlClean(searchbar.Text);
            if (!string.IsNullOrEmpty(txt.Trim()))
            {
                sql += " WHERE(LOWER(name) LIKE LOWER('%" + txt.Trim() + "%'))";
                //cmd.Parameters.AddWithValue("@name", searchbar.Text.Trim());
            }

            cmd.CommandText = sql;
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            
            DataTable dt = new DataTable();
            sda.Fill(dt);
            projects.DataSource = dt;
            projects.DataBind();
            con.Close();
            
        }

        protected string sqlClean(string input)
        {
            input = input.Replace("'", "''");
            input = input.Replace('"', ' ');
            input = input.Replace("&", " ");
            input = input.Replace("(", " ");
            input = input.Replace(")", " ");
            input = input.Replace("@", " ");
            input = input.Replace("#", " ");
            input = input.Replace("$", " ");
            input = input.Replace("%", " ");
            return input;
        }

        protected void projects_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            projects.PageIndex = e.NewPageIndex;
            ShowData();
        }
    }
}