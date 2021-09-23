using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace LoginPage
{
    public partial class users : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("datasource=localhost;port=3306;username=maxmckelvey;password=G@torade123;Connection Timeout=3000;database=acuity");
        private DataTable GetCustomersData()
        {
            using (con)
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT customers.contact_id, customers.first_name, customers.last_name, customers.account_name, customers.email, customers.title, customers.department, customers.phone, customers.address, customers.project_id FROM customers INNER JOIN project_relation ON customers.project_id=project_relation.project_id WHERE customers.project_id=" + Request.QueryString["id"].ToString(), con))
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

        private DataTable GetNotes()
        {
            using (con)
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT proj_notes.project_id, proj_notes.note, projects.id, projects.name, projects.description FROM proj_notes INNER JOIN projects ON proj_notes.project_id=projects.id WHERE projects.id=" + Request.QueryString["id"].ToString(), con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable("notes"))
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
                DataTable ds = GetCustomersData();
                grCustomers.DataSource = ds;
                grCustomers.DataBind();

                DataTable dt = GetNotes();
                projList.DataSource = dt;
                projList.DataBind();
                
                con.Close();
            }


        }

        protected void grCustomers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grCustomers.PageIndex = e.NewPageIndex;
            con.Open();
            DataTable ds = GetCustomersData();
            grCustomers.DataSource = ds;
            grCustomers.DataBind();
            con.Close();
        }

        protected void grCustomers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string row = grCustomers.Rows[e.RowIndex].Cells[2].Text;

            con.Open();
            MySqlCommand delquery = new MySqlCommand("DELETE FROM customers WHERE contact_id='" + row + "'", con);
            delquery.ExecuteNonQuery();
            con.Close();

            con.Open();
            DataTable ds = GetCustomersData();
            grCustomers.DataSource = ds;
            grCustomers.DataBind();

            DataTable dt = GetNotes();
            projList.DataSource = dt;
            projList.DataBind();

            con.Close();

            
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[2].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            
            first_name.Visible = true;
            first_name.Enabled = true;
            last_name.Visible = true;
            last_name.Enabled = true;
            account_name.Visible = true;
            account_name.Enabled = true;
            email.Visible = true;
            email.Enabled = true;
            title.Visible = true;
            title.Enabled = true;
            department.Visible = true;
            department.Enabled = true;
            phone.Visible = true;
            phone.Enabled = true;
            address.Visible = true;
            address.Enabled = true;

            add.Visible = false;
            add.Enabled = false;
            submit.Visible = true;
            submit.Enabled = true;

            searchAdd.Visible = true;
            searchAdd.Enabled = true;
            searchAddSubmit.Visible = true;
            searchAddSubmit.Enabled = true;

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            int newID=0;
            if (grCustomers.Rows.Count > 0)
            {
                string IdQuery = "SELECT contact_id FROM customers ORDER BY contact_id DESC LIMIT 1;";
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

                newID = previousID;
            }
            
            con.Open();

            string query = "INSERT INTO customers(contact_id, first_name, last_name, account_name, email, title, department, phone, address, project_id) VALUES(@contact_id, @first_name, @last_name, @account_name, @email, @title, @department, @phone, @address, @project_id);";
            MySqlCommand da = new MySqlCommand(query, con);

            TextBox txt1 = FindControl("first_name") as TextBox;
            da.Parameters.AddWithValue("@first_name", txt1.Text);

            TextBox txt2 = FindControl("last_name") as TextBox;
            da.Parameters.AddWithValue("@last_name", txt2.Text);

            TextBox txt3 = FindControl("account_name") as TextBox;
            da.Parameters.AddWithValue("@account_name", txt3.Text);

            TextBox txt4 = FindControl("email") as TextBox;
            da.Parameters.AddWithValue("@email", txt4.Text);

            TextBox txt5 = FindControl("title") as TextBox;
            da.Parameters.AddWithValue("@title", txt5.Text);

            TextBox txt6 = FindControl("department") as TextBox;
            da.Parameters.AddWithValue("@department", txt6.Text);
                
            TextBox txt7 = FindControl("phone") as TextBox;
            da.Parameters.AddWithValue("@phone", txt7.Text);

            TextBox txt8 = FindControl("address") as TextBox;
            da.Parameters.AddWithValue("@address", txt8.Text);

            da.Parameters.AddWithValue("@project_id", Request.QueryString["id"].ToString());

            da.Parameters.AddWithValue("@contact_id", newID);

            da.ExecuteNonQuery();

            con.Close();

            con.Open();
            DataTable ds = GetCustomersData();
            grCustomers.DataSource = ds;
            grCustomers.DataBind();

            con.Close();


            first_name.Visible = false;
            first_name.Enabled = false;
            first_name.Text = "First name";
            last_name.Visible = false;
            last_name.Enabled = false;
            last_name.Text = "Last name";
            account_name.Visible = false;
            account_name.Enabled = false;
            account_name.Text = "Account name";
            email.Visible = false;
            email.Enabled = false;
            email.Text = "Email";
            title.Visible = false;
            title.Enabled = false;
            title.Text = "Title";
            department.Visible = false;
            department.Enabled = false;
            department.Text = "Department";
            phone.Visible = false;
            phone.Enabled = false;
            phone.Text = "Phone";
            address.Visible = false;
            address.Enabled = false;
            address.Text = "Address";

            add.Visible = true;
            add.Enabled = true;
            submit.Visible = false;
            submit.Enabled = false;

            searchAdd.Visible = false;
            searchAdd.Enabled = false;
            searchAddSubmit.Visible = false;
            searchAddSubmit.Enabled = false;
        }

        protected void projEdit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            foreach (DataListItem item in projList.Items)
            {
                TextBox name = item.FindControl("proj_name") as TextBox;
                name.ReadOnly = false;
                name.Enabled = true;

                TextBox desc = item.FindControl("proj_desc") as TextBox;
                desc.ReadOnly = false;
                desc.Enabled = true;

                TextBox notes = item.FindControl("notes") as TextBox;
                notes.ReadOnly = false;
                notes.Enabled = true;

                Button projSave = item.FindControl("projSave") as Button;
                projSave.Enabled = true;
                projSave.Visible = true;
            }

            btn.Visible = false;
            btn.Enabled = false;

        }

        protected void projSave_Click(object sender, EventArgs e)
        {
            foreach (DataListItem item in projList.Items)
            {
                TextBox name = item.FindControl("proj_name") as TextBox;
                TextBox desc = item.FindControl("proj_desc") as TextBox;
                TextBox notes = item.FindControl("notes") as TextBox;

                Button projEdit = item.FindControl("projEdit") as Button;
                projEdit.Enabled = true;
                projEdit.Visible = true;

                con.Open();
                MySqlCommand cmd = new MySqlCommand("UPDATE projects SET name = '" + name.Text + "', description = '" + desc.Text + "' WHERE id=" + Request.QueryString["id"].ToString(), con);
                MySqlCommand cmd2 = new MySqlCommand("UPDATE proj_notes SET note = '" + notes.Text + "' WHERE project_id=" + Request.QueryString["id"].ToString(), con);

                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                con.Close();

                name.ReadOnly = true;
                name.Enabled = false;

                desc.ReadOnly = true;
                desc.Enabled = false;

                notes.ReadOnly = true;
                notes.Enabled = false;
            }

            Button btn = (Button)sender;
            btn.Visible = false;
            btn.Enabled = false;


            
        }

        protected void searchAddSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();

            string sql = "SELECT * FROM customers";
            string txt = sqlClean(searchAddSubmit.Text);
            if (!string.IsNullOrEmpty(txt.Trim()))
            {
                sql += " WHERE(LOWER(last_name) LIKE LOWER('%" + txt.Trim() + "%'))";
                //cmd.Parameters.AddWithValue("@name", searchbar.Text.Trim());
            }

            cmd.CommandText = sql;
            cmd.Connection = con;
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            searchGrid.DataSource = dt;
            searchGrid.DataBind();
            con.Close();
            searchGrid.Visible = true;
            searchGrid.Enabled = true;

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
    }
}