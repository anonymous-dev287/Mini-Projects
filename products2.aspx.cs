using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project2114
{
    public partial class products2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            TextBox txtbox = (TextBox)(e.Item.FindControl("TextBox1"));
            Session["addproduct"] = "true";
            Response.Redirect("AddtoCart1.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + txtbox.Text);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddtoCart1.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact_us.aspx");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}