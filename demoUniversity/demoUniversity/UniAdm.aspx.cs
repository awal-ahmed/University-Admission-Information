using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace demoUniversity
{
    public partial class UniAdm : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Visible = false;
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileInfo fi = new FileInfo(FileUpload1.FileName);
                if (fi.Extension == ".pdf")
                {
                    SqlCommand cmd = connect.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into notic (fname, university, date, des ) values ('" + FileUpload1.FileName + "','" + TextBox2.Text + "','" + Convert.ToDateTime(TextBox1.Text) + "','" + TextBox3.Text + "')";
                    cmd.ExecuteNonQuery();
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/notic/") + FileUpload1.FileName);
                    TextBox1.Text = null;
                    TextBox2.Text = null;
                    TextBox3.Text = null;
                    Label5.Visible = true;
                    Label5.Text = "Uploded successfully";
                }
                else
                {

                    Label5.Visible = true;
                    Label5.Text = "You can only upload pdf file";
                }
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Please select A file";
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