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
    public partial class forgetPassword : System.Web.UI.Page
    {
        SqlConnection sc;

        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringReg"].ConnectionString);
            sc.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql = "select * from register where email = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, sc);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                if (DropDownList1.SelectedValue.Equals(sdr["question"].ToString()))
                {
                    if (TextBox2.Text.Equals(sdr["answer"].ToString()))
                    {
                        TextBox3.Text = sdr["password"].ToString();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Answer');", true);
                    }
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Question');", true);
                }
            }
            else
            {
                TextBox1.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid E-Mail ID');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
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
            Response.Redirect("contact_us.aspx");
        }

       
    }
}