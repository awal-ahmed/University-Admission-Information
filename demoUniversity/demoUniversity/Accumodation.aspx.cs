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
            tab1.Visible = false;
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            Response.Write("Successful");

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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (true)
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
        }
    }
}