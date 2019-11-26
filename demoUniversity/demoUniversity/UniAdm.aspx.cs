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
    }
}