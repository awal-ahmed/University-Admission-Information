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
    public partial class Edit : System.Web.UI.Page
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

            tab1.Visible = false;
            tab2.Visible = false;
            tab3.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Button4.Visible = false;
            Button5.Visible = false;
            Button6.Visible = false;
            if (!IsPostBack)
            {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("From");
                SqlCommand cmd = new SqlCommand("select distinct varsity  from univer2", connect);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataSource = ds;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "varsity";
                DropDownList1.DataValueField = "varsity";
                DropDownList1.DataBind();

                //  Second
                DropDownList2.Items.Clear();
                SqlCommand cmd1 = new SqlCommand("select distinct name  from district", connect);
                cmd1.ExecuteNonQuery();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DropDownList2.DataSource = ds1;
                DropDownList2.DataTextField = "name";
                DropDownList2.DataValueField = "name";
                DropDownList2.DataBind();

                //third
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("From");
                DropDownList3.DataSource = ds;
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "varsity";
                DropDownList3.DataValueField = "varsity";
                DropDownList3.DataBind();

                // fourth
                DropDownList4.Items.Clear();
                DropDownList4.Items.Add("From");
                DropDownList4.DataSource = ds;
                DropDownList4.DataBind();
                DropDownList4.DataTextField = "varsity";
                DropDownList4.DataValueField = "varsity";
                DropDownList4.DataBind();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tab1.Visible = true;
            Label15.Visible = true;
            Button4.Visible = true;
            
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            tab2.Visible = true;
            Label16.Visible = true;
            Button5.Visible = true;

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            tab3.Visible = true;
            Label17.Visible = true;
            Button6.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                Response.Write("Done");
                SqlCommand cmd = connect.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into news (Venue, Program_Type, Mont, Start_Date, End_Date, Details, Contact) values ('" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Parse( TextBox4.Text) + "','" + DateTime.Parse(TextBox5.Text) + "','" + TextBox6.Text + "','" + TextBox1.Text + "')";
                cmd.ExecuteNonQuery();
                
            }
            else
            {
                Response.Clear();
                Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Information Not Found');</script>");
                Response.Write("Please fill all informations");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox9.Text != "" && TextBox10.Text != "" && TextBox11.Text != "")
            {
                Response.Write("Done");
                SqlCommand cmd = connect.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into transport (Fromp, To_place, Type, Time, Fare, Contact, Duration, Additional) values ('" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "'," + TextBox11.Text + ",'" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "')";
                cmd.ExecuteNonQuery();

            }
            else
            {
                Response.Clear();
                Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Information Not Found');</script>");
                Response.Write("Please fill all informations");
            }
        }

        

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox17.Text != "" || TextBox18.Text != "" )
            {
                Response.Write("Done");
                SqlCommand cmd = connect.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into hotel (varsity, hotel, Adress, Contact) values ('" + DropDownList4.Text  + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "')";
                cmd.ExecuteNonQuery();

            }
            else
            {
                Response.Clear();
                Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Information Not Found');</script>");
                Response.Write("Please fill all informations");
            }
        }

    }
}