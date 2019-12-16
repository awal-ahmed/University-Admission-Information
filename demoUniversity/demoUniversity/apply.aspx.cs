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
    public partial class apply : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");
        void bt_Click(object sender, EventArgs e)
        {
            {
                string uni, sub;
                Button button = (Button)sender;
                string row = button.CommandArgument;
                int i = Convert.ToInt32(row);
                String reg = Session["reg"].ToString();
                {




                    String sql = "select uni,sub from subli  except select uni,sub from subch  where reg = '" + reg + "'";
                    using (SqlCommand command = new SqlCommand(sql, connect))
                    {
                        SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                        DataSet dataSet = new DataSet();
                        dataAdapter.Fill(dataSet);
                        uni = dataSet.Tables[0].Rows[i][0].ToString();
                        sub = dataSet.Tables[0].Rows[i][1].ToString();
                    }
                }

                SqlCommand cmd = connect.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into subch (uni,sub,reg) values('" + uni + "', '" + sub + "','" + reg + "')";
                cmd.Connection.Open();

                if (sub == "") Response.Write(i);
                cmd.ExecuteNonQuery();
                Response.Write(sub + uni);
            }

            {
                create2();
            }


        }
        void btr_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            string row = button.CommandArgument;
            int i = Convert.ToInt32(row);
            SqlCommand cmd = connect.CreateCommand();
            String reg = Session["reg"].ToString();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from subch where id = '" + i + "'and reg = '" + reg + "'";
            cmd.Connection.Open();


            cmd.ExecuteNonQuery();
            create2();
        }
        void create2()
        {
            //
            //Label1.Text = "Payment is successful. Now complete your subject choice. You can edit your choice. It is not necessary to choice all subjects.";
            //Response.Clear();
            Table3.Rows.Clear();
            if (Session["reg"] != null)
            {
                String reg = Session["reg"].ToString();
                String sql = "select uni,sub,id from subch  where reg = '" + reg + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                int j = dataSet.Tables[0].Rows.Count;
                //Table5.Dispose = true;


                for (int i = 0; i < j; i++)
                {
                    DataTable tables = dataSet.Tables[0];


                    {
                        TableRow row = new TableRow();

                        TableCell cell = new TableCell();
                        cell.Text = tables.Rows[i][0].ToString();
                        int id = Convert.ToInt32(tables.Rows[i][2].ToString());
                        row.Cells.Add(cell);
                        TableCell cell1 = new TableCell();
                        cell1.Text = tables.Rows[i][1].ToString();
                        row.Cells.Add(cell1);
                        row.BackColor = System.Drawing.Color.LightGreen;

                        Button bt = new Button();
                        bt.ID = "bt_" + i.ToString() + "_rmv";
                        bt.CommandArgument = id.ToString();
                        bt.Text = "Remove";
                        bt.Click += new EventHandler(btr_Click);
                        TableCell cellp = new TableCell();
                        row.Cells.Add(cellp);
                        row.Cells[2].Controls.Add(bt);
                        Table3.Rows.Add(row);

                        Response.Write(i);
                    }


                }
            }
            if (Session["create"] != null) create(); 
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (connect.State == ConnectionState.Open)
                {
                    connect.Close();
                }
                connect.Open();

                //Table3.Visible = false;
                //Table2.Visible = false;
                for (int i = 0; i < Table2.Rows.Count; i++)
                {
                    Table2.Rows[i].Visible = false;
                }
                Response.Write("Successful Database");
                //cons_table();
                //Table3.Visible = false;
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
            if (Session["create"] != null) create();
            create2();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(DropDownList2.SelectedItem.Text);
            if (DropDownList2.SelectedItem.Text != "Engineering")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('This_Feature _Is_Currently_Available_For_Enginnering!');", true);
                return;
            }
            Label1.Text = "Payment is successful. Now complete your subject choice. You can edit your choice. It is not necessary to choice all subjects.";
            
            create();
            Session.Add("create", "notnull");
        }
        void p_create()
        {

        }
        void create()
        {
            //Label1.Text = "Payment is successful. Now complete your subject choice. You can edit your choice. It is not necessary to choice all subjects.";
            //Response.Clear();
            Table4.Rows.Clear();
            if (Session["reg"] != null)
            {
                String reg = Session["reg"].ToString();
                String sql = "select uni,sub from subli  except select uni,sub from subch  where reg = '" + reg + "'";
                SqlCommand command = new SqlCommand(sql, connect);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                int j = dataSet.Tables[0].Rows.Count;
                //Table5.Dispose = true;


                for (int i = 0; i < j; i++)
                {
                    DataTable tables = dataSet.Tables[0];


                    {
                        TableRow row = new TableRow();

                        TableCell cell = new TableCell();
                        cell.Text = tables.Rows[i][0].ToString();

                        row.Cells.Add(cell);
                        TableCell cell1 = new TableCell();
                        cell1.Text = tables.Rows[i][1].ToString();
                        row.Cells.Add(cell1);
                        row.BackColor = System.Drawing.Color.LightGreen;

                        Button bt = new Button();
                        bt.ID = "bt_" + i.ToString() + "_Del";
                        bt.CommandArgument = i.ToString();
                        bt.Text = "Choose";
                        bt.Click += new EventHandler(bt_Click);
                        TableCell cellp = new TableCell();
                        row.Cells.Add(cellp);
                        row.Cells[2].Controls.Add(bt);
                        Table4.Rows.Add(row);


                    }


                }
            }

        }

    }
}