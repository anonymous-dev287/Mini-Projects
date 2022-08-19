using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace project2114
{
    public partial class adminsite : System.Web.UI.Page
    {
        SqlConnection sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringProd"].ConnectionString);
            sc.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String image = "images/" + TextBox5.Text + ".jpg";
            SqlCommand cmd = new SqlCommand("insert into Cart values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"  +image+ "')", sc); ;
            cmd.ExecuteNonQuery();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinfo.aspx");
        }

       

      
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("orderdetails.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }
    }
}