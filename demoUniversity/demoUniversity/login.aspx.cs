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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            // cons_table();
            Response.Write("Successful");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            if (email.Text.ToString() == "admin" && pword.Text.ToString() == "admin")
            {
                AddDataToSession();
                if (Session["page"] == null)
                    Response.Redirect("Edit.aspx");
                else
                {
                    String st = Session["page"].ToString();
                    Session["page"] = null;
                    Response.Redirect(st);
                }
            }
            SqlCommand cmd = new SqlCommand("select * from stud where reg = '" + email.Text + "'", connect);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            int i = ds1.Tables[0].Rows.Count;
            if (i > 0)
            {
                SqlCommand cmd1 = new SqlCommand("select id from stud where reg = '" + email.Text + "' and pass='" + pword.Text + "'", connect);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds2 = new DataSet();
                da1.Fill(ds2);
                int j = ds2.Tables[0].Rows.Count;
                if (j > 0)
                {
                    AddDataToSession();
                    if (Session["page"] == null)
                        Response.Redirect("profile.aspx");
                    else
                    {
                        String st = Session["page"].ToString();
                        Session["page"] = null;
                        Response.Redirect(st);
                    }

                }
                else Response.Write("<div style='background-color:green ;color:red;font-size:20px'> Invalid Password</div>");
            }
            else
            {
                Response.Clear();
                Response.Write("<div style='background-color:green ;color:red;font-size:20px'> Registration not found</div>");
            }
        }
        void AddDataToSession()
        {
            Session.Add("reg", email.Text);
            Session.Add("pword", pword.Text);
            //Session.Timeout = 2;
            Response.Write(email.Text);
            

        }
    }
}