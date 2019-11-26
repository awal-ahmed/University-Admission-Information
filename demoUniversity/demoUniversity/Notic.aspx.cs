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
    public partial class Notic : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Projectdatabase.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();

            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Uname", typeof(string));
            dt.Columns.Add("Date", typeof(DateTime));
            dt.Columns.Add("Det", typeof(string));
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/notic")))
            {
                FileInfo fi = new FileInfo(strFile);

                SqlCommand cmd1 = new SqlCommand("select university, date, des from notic where fname='" + fi.Name + "'", connect);
                    
                using (var reader = cmd1.ExecuteReader())
                {
                    reader.Read();
                    dt.Rows.Add(fi.Name, reader.GetString(0), reader.GetDateTime(1), reader.GetString(2));
                }
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect.stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/notic/") + e.CommandArgument);
                Response.End();

            }
        }
    }
}