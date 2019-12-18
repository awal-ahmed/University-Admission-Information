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
    public partial class Blog : System.Web.UI.Page
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
            Button1.Visible = false;
            TextBox1.Visible = false;
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
                        Session.Add("name", bt1.Text);
                        bt2.Visible = true;
                        Button1.Visible = true;
                        TextBox1.Visible = true;


                    }
                    else bt1.Text = "Login";

                }
                else bt1.Text = "Login";
            }
            else
            {
                bt1.Text = "Login";
            }

            if (Session["reg"] == null) bt2.Visible = false;
            else if (Session["reg"].ToString() == "admin")
            {
                bt1.Text = "admin";
                Button1.Visible = true;
                TextBox1.Visible = true;
                Response.Write("Admin");
            }
            cons_table();
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            Session.Add("page", "Blog.aspx");
            if (Session["reg"] == null) Response.Redirect("login.aspx");
            else if (Session["reg"].ToString() == "admin") Response.Redirect("Edit.aspx");
            else Response.Redirect("profile.aspx");
        }

        protected void Bt2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            bt2.Visible = false;
            Button1.Visible = false;
            TextBox1.Visible = false;
            bt1.Text = "Login";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string st = Session["name"].ToString();
            cmd.CommandText = "insert into bpost (name , pst) values ('" + st + "','" + TextBox1.Text + "')";
            cmd.ExecuteNonQuery();
            TextBox1.Controls.Clear();
            Response.Redirect("Blog.aspx");
            
        }
        void cons_table()
        {
            Response.Clear();
            String sql = "SELECT * FROM bpost";
            SqlCommand command = new SqlCommand(sql, connect);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            int j = dataSet.Tables[0].Rows.Count;
            //Table5.Dispose = true;
            Table2.Rows.Clear();

            for (int i = 0; i < j; i++)
            {
                DataTable tables = dataSet.Tables[0];

                int pstno = Convert.ToInt32( tables.Rows[i][0].ToString());
                TableRow row = new TableRow();
                /*TableCell cell = new TableCell();
                cell.Width=5;
                cell.BackColor = System.Drawing.Color.LightGreen;
                row.Cells.Add(cell);*/
                TableCell cell1 = new TableCell();
                
                cell1.Text = tables.Rows[i][1].ToString();
                cell1.ForeColor = System.Drawing.Color.Blue;
                cell1.Font.Size = 17;
                cell1.Font.Bold = true;
                row.Cells.Add(cell1);

                Table2.Rows.Add(row);

                TableRow row1 = new TableRow();
                /*TableCell cell2 = new TableCell();
                cell2.Width = 5;
                cell2.BackColor = System.Drawing.Color.LightGreen;
                row1.Cells.Add(cell2);*/
                TableCell cell11 = new TableCell();
                

                string st = tables.Rows[i][2].ToString();
                Label lb2 = new Label();
                st = "&nbsp; &nbsp;   " + st;
                lb2.Text = st;
                lb2.Font.Size = 15;

               

                cell11.Controls.Add(lb2);

                // cell11.Text = st;
                
                row1.Cells.Add(cell11);
                Table2.Rows.Add(row1);
                TableRow row2 = new TableRow();
                /*TableCell cell = new TableCell();
                cell.Width=5;
                cell.BackColor = System.Drawing.Color.LightGreen;
                row.Cells.Add(cell);*/
                TableCell cell12 = new TableCell();
                cell12.BackColor = System.Drawing.Color.FromArgb(13434879);
                cell12.Text = "&nbsp;";
                row2.Cells.Add(cell12);

                Table2.Rows.Add(row2);

            }
            // Loop through rows

        }
    }
}