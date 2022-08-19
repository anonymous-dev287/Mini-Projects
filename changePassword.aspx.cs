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
    public partial class changePassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringReg"].ConnectionString;
            con.Open();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql = "select * from register where email = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            //Response.Redirect("homepage.aspx");
            if (sdr.Read())
            {
                if (TextBox2.Text.Equals(sdr["password"].ToString()))
                {
                    sdr.Close();
                    String sql1 = "update register set password = '" + TextBox3.Text + "' where email = '" + TextBox1.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(sql1, con);
                    cmd2.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password Updated');", true);
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
    }
}