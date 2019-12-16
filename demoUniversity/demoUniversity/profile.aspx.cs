using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace demoUniversity
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            Response.Write("Successful");
            cons_table();
            Table3.Visible = false;
            if (Session["reg"] != null)
            {
                SqlCommand cmds = new SqlCommand("select name from stud where reg = '" + Session["reg"].ToString() + "'", connect);
                SqlDataAdapter da = new SqlDataAdapter(cmds);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                int ij = ds1.Tables[0].Rows.Count;
                if (ij > 0)
                {
                    SqlCommand cmd1 = new SqlCommand("select id from stud where reg = '" + Session["reg"].ToString() + "' and pass='" + Session["pword"].ToString() + "'", connect);
                    SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                    DataSet ds2 = new DataSet();
                    da1.Fill(ds2);
                    int j = ds2.Tables[0].Rows.Count;
                    if (j > 0)
                    {
                        bt1.Text = ds1.Tables[0].Rows[0][0].ToString();
                        bt2.Visible = true;

                    }
                    else bt1.Text = "Login";

                }
                else bt1.Text = "Login";
            }
            else
            {
                bt1.Text = "Login";
                Response.Redirect("Homepage.aspx");
            }

            if (Session["reg"] == null) bt2.Visible = false;
            else if (Session["reg"].ToString() == "admin")
            {
                bt1.Text = "admin";
                Response.Write("Admin");
            }
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            Session.Add("page", null);
            if (Session["reg"] == null) Response.Redirect("login.aspx");
            else if (Session["reg"].ToString() == "admin") Response.Redirect("Edit.aspx");
            else Response.Redirect("profile.aspx");
        }

        protected void Bt2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            bt2.Visible = false;
            bt1.Text = "Login";
            Response.Redirect("HomePage.aspx");
        }
        void cons_table()
        {
            Response.Clear();

            if( Session["reg"] != null) 
            {
            String reg = Session["reg"].ToString();
            String sql = "SELECT * FROM stud where reg = '"+reg+"'";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            int j = dataSet.Tables[0].Rows.Count;
            //Table5.Dispose = true;
            Table1.Rows.Clear();

            for (int i = 0; i < j; i++)
            {
                DataTable tables = dataSet.Tables[0];


                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = "Name: ";
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][3].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }

                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = "Registration: ";
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][0].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }

                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = "Roll: ";
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][1].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }
                for (int k = 4; k <= 16; k=k+2)
                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = tables.Rows[i][k].ToString();
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][k+1].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }
                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = "Optional: ";
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][18].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }
                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = "SSC: ";
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][19].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }
                {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = "Group: ";
                    row.Cells.Add(cell);
                    TableCell cell1 = new TableCell();
                    cell1.Text = tables.Rows[i][21].ToString();
                    row.Cells.Add(cell1);
                    row.BackColor = System.Drawing.Color.LightGreen;

                    Table1.Rows.Add(row);
                }
            }

                /*TableRow row1 = new TableRow();
                TableCell cell2 = new TableCell();
                cell2.Text = "Answer: ";
                row1.Cells.Add(cell2);
                TableCell cell11 = new TableCell();
                cell11.Text = tables.Rows[i][2].ToString();
                row1.Cells.Add(cell11);
                Table5.Rows.Add(row1);
                row1.BackColor = System.Drawing.Color.LightGray;*/

            }
            // Loop through rows

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["reg"] != null)
            {
                String reg = Session["reg"].ToString();
                String sql = "SELECT pass FROM stud where reg = '" + reg + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                int j = dataSet.Tables[0].Rows.Count;
                //Table5.Dispose = true;
                Table1.Rows.Clear();

                for (int i = 0; i < j; i++)
                {
                    DataTable tables = dataSet.Tables[0];


                    {
                        
                        string st = tables.Rows[i][0].ToString();
                        if (st == TextBox1.Text.ToString())
                        {
                            if (TextBox2.Text.ToString() == TextBox3.Text.ToString())
                            {
                                String sql1 = "UPDATE stud pass='" + TextBox2.Text.ToString() + "' where reg='" + reg + "' ";
                                SqlCommand command1 = new SqlCommand(sql1, connect);
                                command1.ExecuteNonQuery();
                                SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command1);
                                DataSet dataSet1 = new DataSet();
                                dataAdapter1.Fill(dataSet1);
                            }
                            else
                            {
                                Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Password Doesn't match');</script>");
                                Response.Write("Password Doesn't match");
                            }
                        }
                        else
                        {
                            Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Invalid Old Password');</script>");
                            Response.Write("Invalid Old Password");
                        }
                    }


                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("apply.aspx");
        }
    }
}