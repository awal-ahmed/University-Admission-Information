using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demoUniversity
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tab1.Visible = false;
            tab2.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Button4.Visible = false;
            Button5.Visible = false;
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

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

    }
}