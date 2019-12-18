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
    public partial class addsub : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
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
            Button1.Text = "Add";
            connect.Open();
            Response.Write("Successful");
            if (!IsPostBack)
            {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("From");
                SqlCommand cmd = new SqlCommand("select distinct  varsity from univer2", connect);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                DropDownList1.DataSource = ds1;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "varsity";
                DropDownList1.DataValueField = "varsity";
                DropDownList1.DataBind();
                //  DropDownList1.DataValueField = "stf";

                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownList2.SelectedItem.Text == "Enginnering")
            {
                SqlCommand cmd5 = new SqlCommand("select uni,sub from subli where uni ='" + DropDownList1.SelectedItem.Text + "' and sub ='" + TextBox1.Text + "'", connect);
                cmd5.ExecuteNonQuery();
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                DataSet ds5 = new DataSet();
                da5.Fill(ds5);
                int ii = ds5.Tables[0].Rows.Count;
                if (ii > 0)
                {
                    Response.Write("Subject Alredy In List");
                }
                else
                {
                    SqlCommand cmd = connect.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into subli (uni, sub) values ('" + DropDownList1.Text + "','" + TextBox1.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Clear();
                    Response.Write("Subject Added Successfully");
                }
            }
        
        else if (DropDownList2.SelectedItem.Text == "Agriculture")
            {
                SqlCommand cmd5 = new SqlCommand("select uni,sub from agsubli where uni ='" + DropDownList1.SelectedItem.Text + "' and sub ='" + TextBox1.Text + "'", connect);
                cmd5.ExecuteNonQuery();
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                DataSet ds5 = new DataSet();
                da5.Fill(ds5);
                int ii = ds5.Tables[0].Rows.Count;
                if (ii > 0)
                {
                    Response.Write("Subject Alredy In List");
                }
                else
                {
                    SqlCommand cmd = connect.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into agsubli (uni, sub) values ('" + DropDownList1.Text + "','" + TextBox1.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Clear();
                    Response.Write("Subject Added Successfully");
                }
            }
            else if (DropDownList2.SelectedItem.Text == "Public")
            {
                SqlCommand cmd5 = new SqlCommand("select uni,sub from pbsubli where uni ='" + DropDownList1.SelectedItem.Text + "' and sub ='" + TextBox1.Text + "'", connect);
                cmd5.ExecuteNonQuery();
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                DataSet ds5 = new DataSet();
                da5.Fill(ds5);
                int ii = ds5.Tables[0].Rows.Count;
                if (ii > 0)
                {
                    Response.Write("Subject Alredy In List");
                }
                else
                {
                    SqlCommand cmd = connect.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into pbsubli (uni, sub) values ('" + DropDownList1.Text + "','" + TextBox1.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Clear();
                    Response.Write("Subject Added Successfully");
                }
            }
            else if (DropDownList2.SelectedItem.Text == "Science And Technology")
            {
                SqlCommand cmd5 = new SqlCommand("select uni,sub from scsubli where uni ='" + DropDownList1.SelectedItem.Text + "' and sub ='" + TextBox1.Text + "'", connect);
                cmd5.ExecuteNonQuery();
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                DataSet ds5 = new DataSet();
                da5.Fill(ds5);
                int ii = ds5.Tables[0].Rows.Count;
                if (ii > 0)
                {
                    Response.Write("Subject Alredy In List");
                }
                else
                {
                    SqlCommand cmd = connect.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into scsubli (uni, sub) values ('" + DropDownList1.Text + "','" + TextBox1.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Clear();
                    Response.Write("Subject Added Successfully");
                }
            }
            else
            {
                Response.Write("Please Select a Type");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select distinct  varsity from univer2 where varsity = '" + TextBox2.Text + "'", connect);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            int ii = ds1.Tables[0].Rows.Count;
            if (ii == 0)
            {
                SqlCommand cmd1 = connect.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into univer2 (varsity) values ('" + TextBox2.Text + "')";
                cmd1.ExecuteNonQuery();
                Response.Redirect("addsub.aspx");
            }
            else
            {
                Response.Write("Varsity Already Listed");
            }
        }

        protected void Bt2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            bt2.Visible = false;
            bt1.Text = "Login";
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            Session.Add("page", null);
            if (Session["reg"] == null) Response.Redirect("login.aspx");
            else if (Session["reg"].ToString() == "admin") Response.Redirect("Edit.aspx");
            else Response.Redirect("profile.aspx");
        }
    }
}