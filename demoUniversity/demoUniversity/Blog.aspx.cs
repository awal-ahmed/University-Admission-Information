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
            TextBox2.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
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
                Session.Add("name", bt1.Text);
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
            Response.Redirect("Blog.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
            string st = Session["name"].ToString();
            string sql = "insert into bpost (name , pst) values ('" + st + "','" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(sql,connect);
            cmd.ExecuteNonQuery();
            TextBox1.Controls.Clear();
            Response.Redirect("Blog.aspx");

        }
        void cons_table()
        {
            Response.Clear();
            String sql = "SELECT * FROM bpost order by id DESC";
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

                int pstno = Convert.ToInt32(tables.Rows[i][0].ToString());
                TableRow row = new TableRow();
                /*TableCell cell = new TableCell();
                cell.Width=5;
                cell.BackColor = System.Drawing.Color.LightGreen;
                row.Cells.Add(cell);*/
                TableCell cell1 = new TableCell();

                cell1.Text = tables.Rows[i][1].ToString();
                cell1.ForeColor = System.Drawing.Color.Blue;
                cell1.Font.Size = 15;
                cell1.Font.Bold = false;
                row.Cells.Add(cell1);

                Table2.Rows.Add(row);
                Button bt = new Button();
                bt.ID = "bt_" + pstno.ToString() + "_Del";
                bt.CommandArgument = pstno.ToString();
                bt.Text = "Delete Blog";
                bt.BackColor = System.Drawing.Color.Red;
                bt.ForeColor = System.Drawing.Color.White;
                bt.Click += new EventHandler(btdel_Click);
                TableCell cellp = new TableCell();
                row.Cells.Add(cellp);
                row.Cells[1].Controls.Add(bt);



                Button btedit = new Button();
                btedit.ID = "bt_" + pstno.ToString() + "_edit";
                btedit.CommandArgument = pstno.ToString();
                btedit.Text = "Edit Blog";
                btedit.BackColor = System.Drawing.Color.Red;
                btedit.ForeColor = System.Drawing.Color.White;
                btedit.Click += new EventHandler(btedit_Click);
                TableCell celledit = new TableCell();
                row.Cells.Add(celledit);
                row.Cells[1].Controls.Add(btedit);
                if (Session["reg"] == null)
                {
                    bt.Visible = false;
                    btedit.Visible = false;
                }
                else if (Session["reg"].ToString() == null)
                {
                    bt.Visible = false;
                    btedit.Visible = false;
                }
                else if (Session["reg"].ToString() == "admin")
                {
                    bt.Visible = true;
                    btedit.Visible = false;
                }
                else if (Session["name"].ToString() == tables.Rows[i][1].ToString())
                {
                    bt.Visible = true;
                    btedit.Visible = true;
                }
                else
                {
                    bt.Visible = false;
                    btedit.Visible = false;
                }
                Table2.Rows.Add(row);

                TableRow row2 = new TableRow();
                /*TableCell cell = new TableCell();
                cell.Width=5;
                cell.BackColor = System.Drawing.Color.LightGreen;
                row.Cells.Add(cell);*/
                Label lb = new Label();
                
                TableRow row1 = new TableRow();
                /*TableCell cell2 = new TableCell();
                cell2.Width = 5;
                cell2.BackColor = System.Drawing.Color.LightGreen;
                row1.Cells.Add(cell2);*/
                TableCell cell11 = new TableCell();


                string st = tables.Rows[i][2].ToString();
                Label lb2 = new Label();
                //st = "&nbsp; &nbsp;   " + st;
                lb2.Text = st;
                lb2.Font.Size = 15;




                cell11.Controls.Add(lb2);

                // cell11.Text = st;

                row1.Cells.Add(cell11);
                Table2.Rows.Add(row1);



                // Loop through rows
                


                //Write comment
                Response.Clear();
                String sql1 = "SELECT * FROM cmnt where pstno = '" + pstno + "'";
                SqlCommand command1 = new SqlCommand(sql1, connect);
                SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command1);
                DataSet dataSet1 = new DataSet();
                dataAdapter1.Fill(dataSet1);
                int j1 = dataSet1.Tables[0].Rows.Count;
                TableRow hdrow = new TableRow();

                TableCell hdcell = new TableCell();
                Label l = new Label();
                l.Text = "Comment Section";
                l.Font.Bold = true;
                l.Font.Size = 12;
                l.CssClass = "re";
                hdcell.Controls.Add(l);
                hdrow.Cells.Add(hdcell);
                Table2.Rows.Add(hdrow);
                for (int i1 = 0; i1 < j1; i1++)
                {
                    DataTable tables1 = dataSet1.Tables[0];

                    int cmtno = Convert.ToInt32(tables1.Rows[i1][0].ToString());
                    TableRow rows = new TableRow();
                    
                    TableCell cell1s = new TableCell();
                    Label lb1 = new Label();
                    lb1.Text = tables1.Rows[i1][2].ToString();
                    lb1.CssClass = "re";
                    cell1s.Controls.Add(lb1);
                    cell1s.ForeColor = System.Drawing.Color.Blue;
                    cell1s.Font.Size = 15;
                    cell1s.Font.Bold = false;
                    rows.Cells.Add(cell1s);

                    
                    Button bts = new Button();
                    bts.ID = "btc_" + cmtno.ToString() + "_Del";
                    bts.CommandArgument = cmtno.ToString();
                    bts.Text = "Delete Comment";
                    bts.BackColor = System.Drawing.Color.Red;
                    bts.ForeColor = System.Drawing.Color.White;
                    bts.Click += new EventHandler(ctdel_Click);
                    TableCell cellps = new TableCell();
                    rows.Cells.Add(cellps);
                    rows.Cells[1].Controls.Add(bts);

                    Button btsedit = new Button();
                    btsedit.ID = "btc_" + cmtno.ToString() + "_edit";
                    btsedit.CommandArgument = cmtno.ToString();
                    btsedit.Text = "Edit Comment";
                    btsedit.BackColor = System.Drawing.Color.Red;
                    btsedit.ForeColor = System.Drawing.Color.White;
                    btsedit.Click += new EventHandler(ctedit_Click);
                    TableCell cellsedit = new TableCell();
                    rows.Cells.Add(cellsedit);
                    rows.Cells[1].Controls.Add(btsedit);

                    if (Session["reg"] == null)
                    {
                        bts.Visible = false;
                        btsedit.Visible = false;
                    }
                    else if (Session["reg"].ToString() == null)
                    {
                        bts.Visible = false;
                        btsedit.Visible = false;
                    }
                    else if (Session["reg"].ToString() == "admin")
                    {
                        bts.Visible = true;
                        btsedit.Visible = false;
                    }
                    else if (Session["name"].ToString() == tables1.Rows[i1][2].ToString())
                    {
                        bts.Visible = true;
                        btsedit.Visible = true;
                    }
                    else
                    {
                        bts.Visible = false;
                        btsedit.Visible = false;
                    }
                   // rows.CssClass = "re";
                    Table2.Rows.Add(rows);

                    TableRow row2s = new TableRow();
                    /*TableCell cell = new TableCell();
                    cell.Width=5;
                    cell.BackColor = System.Drawing.Color.LightGreen;
                    row.Cells.Add(cell);*/

                    TableRow row1s = new TableRow();
                    /*TableCell cell2 = new TableCell();
                    cell2.Width = 5;
                    cell2.BackColor = System.Drawing.Color.LightGreen;
                    row1.Cells.Add(cell2);*/
                    TableCell cell11s = new TableCell();


                    string sts = tables1.Rows[i1][3].ToString();
                    Label lb2s = new Label();
                   // sts = "&nbsp; &nbsp;   " + sts;
                    lb2s.Text = sts;
                    lb2s.CssClass = "re";
                    lb2s.Font.Size = 12;




                    cell11s.Controls.Add(lb2s);

                    // cell11.Text = st;

                    row1s.Cells.Add(cell11s);
                    Table2.Rows.Add(row1s);



                    // Loop through rows
                   
                }
                
                TableRow rows1 = new TableRow();
                TextBox tb = new TextBox();
                tb.ID = "tb_" + pstno.ToString() + "_cm";
                tb.CssClass = "te";
                tb.Width = 400;
                tb.Height = 30;
                tb.TextMode = TextBoxMode.MultiLine;

                Button bt1 = new Button();
                bt1.CommandArgument = pstno.ToString();
                bt1.Text = "Comment";
                bt1.BackColor = System.Drawing.Color.Blue;
                bt1.ForeColor = System.Drawing.Color.White;
                bt1.Click += new EventHandler(btcm_Click);
                TableCell cellpss = new TableCell();
                rows1.Cells.Add(cellpss);
                TableCell cellpst = new TableCell();
                rows1.Cells.Add(cellpst);

                rows1.Cells[1].Controls.Add(bt1);
                rows1.Cells[0].Controls.Add(tb);

                if (Session["reg"] == null)
                {
                    bt1.Visible = false;
                    tb.Visible = false;
                }
                else if (Session["reg"].ToString() == null)
                {
                    bt1.Visible = false;
                    tb.Visible = false;
                }
                else if (Session["reg"].ToString() == "admin")
                {
                    bt1.Visible = true;
                    tb.Visible = true;
                }
                Table2.Rows.Add(rows1);

                TableCell cell12 = new TableCell();
                cell12.BackColor = System.Drawing.Color.FromArgb(13434879);
                cell12.Text = "&nbsp;";
                row2.Cells.Add(cell12);

                Table2.Rows.Add(row2);







            }
            Table2.HorizontalAlign = HorizontalAlign.Center;
            
            
            

        }
        void btdel_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            string row = button.CommandArgument;
            int i = Convert.ToInt32(row);
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from bpost where id = '" + i + "'";



            cmd.ExecuteNonQuery();
            Response.Redirect("Blog.aspx");


        }
        void btedit_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            string row = button.CommandArgument;
            int i = Convert.ToInt32(row);
            Table1.Visible = false;
            Table2.Visible = false;
            TextBox2.Visible = true;
            Button2.Visible = true;
            Session.Add("editindex",i);
            String sql1 = "SELECT pst FROM bpost where id = '" + i + "'";
            SqlCommand command1 = new SqlCommand(sql1, connect);
            SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command1);
            DataSet dataSet1 = new DataSet();
            dataAdapter1.Fill(dataSet1);
            int j1 = dataSet1.Tables[0].Rows.Count;
            if (j1 > 0)
            {
                string st = dataSet1.Tables[0].Rows[0][0].ToString();
                TextBox2.Text = st;
            }

           


        }
        void ctedit_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            string row = button.CommandArgument;
            int i = Convert.ToInt32(row);
            Table1.Visible = false;
            Table2.Visible = false;
            TextBox2.Visible = true;
            Button3.Visible = true;
            Session.Add("editindex", i);
            String sql1 = "SELECT cmt FROM cmnt where id = '" + i + "'";
            SqlCommand command1 = new SqlCommand(sql1, connect);
            SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command1);
            DataSet dataSet1 = new DataSet();
            dataAdapter1.Fill(dataSet1);
            int j1 = dataSet1.Tables[0].Rows.Count;
            if (j1 > 0)
            {
                string st = dataSet1.Tables[0].Rows[0][0].ToString();
                TextBox2.Text = st;
            }




        }
        void ctdel_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            string row = button.CommandArgument;
            int i = Convert.ToInt32(row);
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from cmnt where id = '" + i + "'";



            cmd.ExecuteNonQuery();
            Response.Redirect("Blog.aspx");


        }
        void btcm_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            string pstno = button.CommandArgument;
            int i = Convert.ToInt32(pstno);
            TextBox txt = (TextBox)Table2.FindControl("tb_" + pstno.ToString() + "_cm");
            Response.Write(txt.Text.ToString());
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string st = Session["name"].ToString();
            cmd.CommandText = "insert into cmnt (name , pstno , cmt) values ('" + st + "','" + i + "','" + txt.Text + "')";
            cmd.ExecuteNonQuery();
            TextBox1.Controls.Clear();
            Response.Redirect("Blog.aspx");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String sql1 = "update bpost set pst = '" + TextBox2.Text + "'  where id = '" + Session["editindex"].ToString() + "'";
            SqlCommand command1 = new SqlCommand(sql1, connect);
            SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command1);
            DataSet dataSet1 = new DataSet();
            dataAdapter1.Fill(dataSet1);
            Response.Redirect("Blog.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String sql1 = "update cmnt set cmt = '" + TextBox2.Text + "'  where id = '" + Session["editindex"].ToString() + "'";
            SqlCommand command1 = new SqlCommand(sql1, connect);
            SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command1);
            DataSet dataSet1 = new DataSet();
            dataAdapter1.Fill(dataSet1);
            Response.Redirect("Blog.aspx");
        }
    }
}