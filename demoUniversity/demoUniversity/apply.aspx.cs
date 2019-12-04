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

    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            Table3.Visible = false;
            //Table2.Visible = false;
            for (int i = 0; i < Table2.Rows.Count; i++)
            {
                Table2.Rows[i].Visible = false;
            }
            Response.Write("Successful");
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
            Label1.Text = "Payment is successful. Now complete your subject choice. You can edit your choice. It is not necessary to choice all subjects.";
            Response.Clear();

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
                //Table1.Visible = false;

                for (int i = 0; i < j; i++)
                {
                    DataTable tables = dataSet.Tables[0];


                    {
                        TableRow row = new TableRow();

                        TableCell cell = new TableCell();
                        cell.Text = tables.Rows[i][0].ToString();

                        Table2.Rows[i+1].Cells.Add(cell);
                        TableCell cell1 = new TableCell();
                        cell1.Text = tables.Rows[i][1].ToString();
                        Table2.Rows[i+1].Cells.Add(cell1);
                        row.BackColor = System.Drawing.Color.LightGreen;

                        Table2.Rows[i+1].Visible = true;

                        
                    }

                    
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {

        }

        protected void Button14_Click(object sender, EventArgs e)
        {

        }

        protected void Button15_Click(object sender, EventArgs e)
        {

        }

        protected void Button16_Click(object sender, EventArgs e)
        {

        }

        protected void Button17_Click(object sender, EventArgs e)
        {

        }

        protected void Button18_Click(object sender, EventArgs e)
        {

        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void Button20_Click(object sender, EventArgs e)
        {

        }

        protected void Button21_Click(object sender, EventArgs e)
        {

        }

        protected void Button22_Click(object sender, EventArgs e)
        {

        }

        protected void Button23_Click(object sender, EventArgs e)
        {

        }

        protected void Button24_Click(object sender, EventArgs e)
        {

        }

        protected void Button25_Click(object sender, EventArgs e)
        {

        }

        protected void Button26_Click(object sender, EventArgs e)
        {

        }

        protected void Button27_Click(object sender, EventArgs e)
        {

        }

        protected void Button28_Click(object sender, EventArgs e)
        {

        }

        protected void Button29_Click(object sender, EventArgs e)
        {

        }

        protected void Button30_Click(object sender, EventArgs e)
        {

        }

        protected void Button31_Click(object sender, EventArgs e)
        {

        }

        protected void Button32_Click(object sender, EventArgs e)
        {

        }

        protected void Button33_Click(object sender, EventArgs e)
        {

        }

        protected void Button34_Click(object sender, EventArgs e)
        {

        }

        protected void Button35_Click(object sender, EventArgs e)
        {

        }

        protected void Button36_Click(object sender, EventArgs e)
        {

        }

        protected void Button37_Click(object sender, EventArgs e)
        {

        }
    }
}