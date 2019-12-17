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
    public partial class addstud : System.Web.UI.Page
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
           // cons_table();
            Response.Write("Successful");
            Table2.Visible = false;
            Table3.Visible = false;
            Button2.Visible = false;
            SqlCommand cmd5 = new SqlCommand("select * from stud ", connect);
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
                Response.Write("Information Not Found");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.ToString() == "Science")
            {
                Table2.Visible = true;
            }
            else
            {
                Table3.Visible = true;
            }
            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if (DropDownList1.SelectedItem.ToString() == "Science")
            {


                    SqlCommand cmd5 = new SqlCommand("select * from stud where reg = '" + TextBox15.Text + "'", connect);
                    cmd5.ExecuteNonQuery();
                     SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                     DataSet ds5 = new DataSet();
                     da5.Fill(ds5);
                     int ii = ds5.Tables[0].Rows.Count;
                if (ii > 0)
            
                {
                    Response.Write("Student Already Added");
            
                }
                else
                {
                    SqlCommand cmd4 = connect.CreateCommand();
                    cmd4.CommandType = CommandType.Text;
                    cmd4.CommandText = "insert into stud(reg,roll,pass,name,sub1,mark1,sub2,mark2,sub3,mark3,sub4,mark4,sub5,mark5,sub6,mark6,sub7,mark7,opt,ssc,dept) values ('" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + DropDownList4.SelectedItem.ToString() + "','" + TextBox2.Text + "','" + DropDownList5.SelectedItem.ToString() + "','" + TextBox3.Text + "','" + DropDownList6.SelectedItem.ToString() + "','" + TextBox4.Text + "','" + DropDownList7.SelectedItem.ToString() + "','" + TextBox5.Text + "','" + DropDownList8.SelectedItem.ToString() + "','" + TextBox6.Text + "','" + DropDownList9.SelectedItem.ToString() + "','" + TextBox7.Text + "','" + DropDownList10.SelectedItem.ToString() + "','" + TextBox22.Text + "','" + DropDownList1.SelectedItem.ToString() + "')";
                    cmd4.ExecuteNonQuery();
                    Response.Redirect("addstud.aspx");
                }

            }
            else
            {
                SqlCommand cmd5 = new SqlCommand("select * from stud where reg = '" + TextBox15.Text + "'", connect);
                cmd5.ExecuteNonQuery();
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                DataSet ds5 = new DataSet();
                da5.Fill(ds5);
                int ii = ds5.Tables[0].Rows.Count;
                if (ii > 0)
                {
                    Response.Write("Student Already Added");

                }
                else
                {
                    SqlCommand cmd4 = connect.CreateCommand();
                    cmd4.CommandType = CommandType.Text;
                    cmd4.CommandText = "insert into stud(reg,roll,pass,name,sub1,mark1,sub2,mark2,sub3,mark3,sub4,mark4,sub5,mark5,sub6,mark6,sub7,mark7,opt,ssc,dept) values ('" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + DropDownList3.SelectedItem.ToString() + "','" + TextBox8.Text + "','" + DropDownList11.SelectedItem.ToString() + "','" + TextBox9.Text + "','" + DropDownList12.SelectedItem.ToString() + "','" + TextBox10.Text + "','" + DropDownList13.SelectedItem.ToString() + "','" + TextBox11.Text + "','" + DropDownList14.SelectedItem.ToString() + "','" + TextBox12.Text + "','" + DropDownList15.SelectedItem.ToString() + "','" + TextBox13.Text + "','" + DropDownList16.SelectedItem.ToString() + "','" + TextBox14.Text + "','" + DropDownList17.SelectedItem.ToString() + "','" + TextBox21.Text + "','" + DropDownList1.SelectedItem.ToString() + "')";
                    cmd4.ExecuteNonQuery();
                    Response.Redirect("addstud.aspx");
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
    }
}