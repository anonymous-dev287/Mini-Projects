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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringReg"].ConnectionString;
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql = "select * from register where email = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                if (TextBox2.Text.Equals(sdr["password"].ToString()))
                {
                    Session["addr"] = sdr["address"].ToString();
                    Session["mob"] = sdr["mobile_no"].ToString();
                    Session["email"] = TextBox1.Text;
                    Response.Redirect("homepage.aspx");
                    
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid E-Mail ID or Password');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid E-Mail ID');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact_us_1.aspx");
        }

      
    }
}