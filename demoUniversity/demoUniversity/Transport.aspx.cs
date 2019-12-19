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
            tab1.Visible = false;
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
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
            }

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
                tab1.Visible = true;
                Label3.Text = st1;
                Label4.Text = st2;
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
                SqlCommand cmd51 = new SqlCommand("select api from gmap where fromp='" + st1 + "' and to_p='" + st2 + "'", connect);
                cmd51.ExecuteNonQuery();
                SqlDataAdapter da51 = new SqlDataAdapter(cmd51);
                DataSet ds51 = new DataSet();
                da51.Fill(ds51);
                int ii1 = ds51.Tables[0].Rows.Count;
                if (ii1 > 0)
                {
                    string st = ds51.Tables[0].Rows[0][0].ToString();
                    mymap.Attributes.Add("src", st);
                }
               

                

               
            }
            
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            //DropDownList1.Items.FindByValue(Session["place"].ToString()).Selected = false;
           // DropDownList2.Items.FindByValue(Session["seluni"].ToString()).Selected = false;
            //DropDownList1.AutoPostBack = false;
            //DropDownList1.AutoPostBack = true;
            if (true)
            {
                tab1.Visible = true;
                Label3.Text = DropDownList1.SelectedItem.Text;
                Label4.Text = DropDownList2.SelectedItem.Text;
                SqlCommand cmd5 = new SqlCommand("select Fromp as Start, To_place as Destination, Type as Transport_Type, Time, Fare, Contact, Duration, Additional  from transport where Fromp='" + DropDownList1.SelectedItem.Text + "' and To_place='" + DropDownList2.SelectedItem.Text + "'", connect);
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

                SqlCommand cmd51 = new SqlCommand("select api from gmap where fromp='" + DropDownList1.SelectedItem.Text + "' and to_p='" + DropDownList2.SelectedItem.Text + "'", connect);
                cmd51.ExecuteNonQuery();
                SqlDataAdapter da51 = new SqlDataAdapter(cmd51);
                DataSet ds51 = new DataSet();
                da51.Fill(ds51);
                int ii1 = ds51.Tables[0].Rows.Count;
                if (ii1 > 0)
                {
                    Table2.Visible = true;
                    string st = ds51.Tables[0].Rows[0][0].ToString();
                    mymap.Attributes.Add("src", st);
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

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (false)
            {

                Response.Clear();
                //DropDownList1.Items.FindByValue(Session["place"].ToString()).Selected = false;
                // DropDownList2.Items.FindByValue(Session["seluni"].ToString()).Selected = false;
                //DropDownList1.AutoPostBack = false;
                //Response.Write(DropDownList1.SelectedItem.Text);
                //Response.Write(DropDownList2.SelectedItem.Text);
                //DropDownList1.AutoPostBack = true;
                if (false)
                {
                    tab1.Visible = true;
                    Label3.Text = DropDownList1.SelectedItem.Text;
                    Label4.Text = DropDownList2.SelectedItem.Text;
                    SqlCommand cmd5 = new SqlCommand("select Fromp as Start, To_place as Destination, Type as Transport_Type, Time, Fare, Contact, Duration, Additional  from transport where Fromp='" + DropDownList1.SelectedItem.Text + "' and To_place='" + DropDownList2.SelectedItem.Text + "'", connect);
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
}