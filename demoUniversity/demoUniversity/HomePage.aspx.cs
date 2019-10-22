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
    public partial class HomePage : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select distinct varsity from univer", connect);
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           // Response.Write(DropDownList1.SelectedItem.Text.ToString());
           
            String st1=DropDownList1.SelectedItem.Text.Trim().ToString();
            Response.Write(st1.Length);
            if (st1 == "BUET" || st1 == "Bangladesh University of Engineering & Technology".ToString())
            {
                Response.Redirect("BUET.aspx");
            }
            else if (DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "RUET".ToString() || DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "Rajshahi University of Engineering & Technology".ToString().ToLower())
            {
                Response.Redirect("RUET.aspx");
            }
            else if (DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "KUET".ToString().ToLower() || DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "Khulna University of Engineering & Technology".ToString().ToLower())
            {
                Response.Redirect("KUET.aspx");
            }
            else if (DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "CUET".ToString().ToLower() || DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "Chittagong University of Engineering & Technology".ToString().ToLower())
            {
                Response.Redirect("CUET.aspx");
            }
            else if (DropDownList1.SelectedItem.Text.ToString().ToLower() == "DU".ToString().ToLower().Trim() || DropDownList1.SelectedItem.Text.ToString().ToLower().Trim() == "Dhaka University".ToString().ToLower())
            {
                Response.Redirect("#");
            }
            else
            {
                Response.Clear();
                //Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('Page is not available right now');</script>");
                Response.Write("Page is not available right now");
            }
        }
    }
}