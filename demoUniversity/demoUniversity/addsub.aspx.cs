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
    }
}