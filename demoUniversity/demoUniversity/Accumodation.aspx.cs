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
    public partial class Accumodation : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            tab1.Visible = false; if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            Response.Write("Successful");
            GridView2.Visible = false;
            Table2.Visible = false;
            
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
            }

            if (Session["reg"] == null) bt2.Visible = false;
            else if (Session["reg"].ToString() == "admin")
            {
                bt1.Text = "admin";
                Response.Write("Admin");
            }

            if (!IsPostBack)
            {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("From");
                SqlCommand cmd = new SqlCommand("select distinct varsity from univer2", connect);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                DropDownList1.DataSource = ds1;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "varsity";
                //  DropDownList1.DataValueField = "stf";
                DropDownList1.DataBind();



            }
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
            }

            if (Session["reg"] == null) bt2.Visible = false;
            else if (Session["reg"].ToString() == "admin")
            {
                bt1.Text = "admin";
                Response.Write("Admin");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (true)
            {

                {
                    tab1.Visible = true;
                    Label3.Text = DropDownList1.SelectedItem.Text;
                    SqlCommand cmd5 = new SqlCommand("select Hotel , Adress , Contact from hotel where varsity='" + DropDownList1.SelectedItem.Text + "'", connect);
                    cmd5.ExecuteNonQuery();
                    SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                    DataSet ds5 = new DataSet();
                    da5.Fill(ds5);
                    int ii = ds5.Tables[0].Rows.Count;
                    if (ii > 0)
                    {
                        GridView1.DataSource = (ds5);
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Clear();
                        Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Information Not Found');</script>");
                        Response.Write("Information Not Found");
                    }
                }
                {
                    SqlCommand cmd5 = new SqlCommand("select api from hotel where varsity='" + DropDownList1.SelectedItem.Text + "'", connect);
                    cmd5.ExecuteNonQuery();
                    SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                    DataSet ds5 = new DataSet();
                    da5.Fill(ds5);
                    int ii = ds5.Tables[0].Rows.Count;
                    if (ii > 0)
                    {
                        GridView2.DataSource = (ds5);
                        GridView2.DataBind();
                        int n = GridView2.Rows.Count;
                        
                        Session.Add("map_ptr", "0");
                        
                        int i = Convert.ToInt32(Session["map_ptr"].ToString());
                        if (i < 0 || i >= n)
                        {
                            
                            return;
                        }
                        Response.Write(i);
                        Response.Write(n);
                        string st = GridView2.Rows[i].Cells[0].Text.ToString();
                        Response.Write(st);
                        mymap.Attributes.Add("src", st);
                        i = (i + 1) % n;
                        Session.Add("map_ptr", i);
                        Table2.Visible = true;
                    }
                }




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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            int n = GridView2.Rows.Count;
           
            int i= (int) Session["map_ptr"];
            
            string st = GridView2.Rows[i].Cells[0].Text.ToString();
            Table2.Visible = true;
            mymap.Attributes.Add("src", st);
            i = (i + 1) % n;
            Session.Add("map_ptr", i);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int n = GridView2.Rows.Count;

            int i = (int)Session["map_ptr"];

            string st = GridView2.Rows[i].Cells[0].Text.ToString();
            mymap.Attributes.Add("src", st);
            Table2.Visible = true;
            i = (i - 1 + n) % n;
            Session.Add("map_ptr", i);
            Table2.Visible = true;
        }
    }
}