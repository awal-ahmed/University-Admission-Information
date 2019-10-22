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
    public partial class Transport : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select distinct  Fromp from transport", connect);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                DropDownList1.DataSource = ds1;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "Fromp";
                DropDownList1.DataValueField = "Fromp";
                DropDownList1.DataBind();
                //  DropDownList1.DataValueField = "stf";

                SqlCommand cmd1 = new SqlCommand("select distinct To_place from transport", connect);
                cmd1.ExecuteNonQuery();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds2 = new DataSet();
                da1.Fill(ds2);
                DropDownList2.DataSource = ds2;
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "To_place";
                DropDownList2.DataValueField = "To_place";
                DropDownList2.DataBind();

            }
            if (Session["place"] != null && Session["seluni"] != null)
            {
                String st1 = Session["place"].ToString();
                String st2 = Session["seluni"].ToString();
                SqlCommand cmd5 = new SqlCommand("select * from transport where Fromp='" + st1 + "' and To_place='" + st2 + "'", connect);
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
                DropDownList1.Items.FindByValue(st1).Selected = true;
                DropDownList2.Items.FindByValue(st2).Selected = true;
               
            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            //DropDownList1.AutoPostBack = false;
            Response.Write(DropDownList1.SelectedItem.Text);
            Response.Write(DropDownList2.SelectedItem.Text);
            //DropDownList1.AutoPostBack = true;
            if (true)
            {
                SqlCommand cmd5 = new SqlCommand("select * from transport where Fromp='" + DropDownList1.SelectedItem.Text + "' and To_place='" + DropDownList2.SelectedItem.Text + "'", connect);
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