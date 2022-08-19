using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace project2114
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringReg"].ConnectionString;
            con.Open();

        }


       
        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql = "select * from adminlogin where email = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                if (TextBox2.Text.Equals(sdr["password"].ToString()))
                {
                    Response.Redirect("adminsite.aspx");

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
