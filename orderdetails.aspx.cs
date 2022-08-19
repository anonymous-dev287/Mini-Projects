using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project2114
{
    public partial class orderdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminsite.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinfo.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }


    }
}