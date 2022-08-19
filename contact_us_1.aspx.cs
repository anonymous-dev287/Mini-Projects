using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace project2114
{
    public partial class contact_us_1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringCust"].ConnectionString;
            con.Open();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage1.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String today = DateTime.Now.ToLongDateString().ToString();
            String query = "insert into contactdetail(clientname,email,mobile,message,messagedate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + today + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            Label2.Text = "Thanks For Contact Us, We will reach You very Soon.";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}