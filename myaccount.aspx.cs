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
 
    public partial class myaccount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Text = Session["email"].ToString();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringReg"].ConnectionString;
            con.Open();
            String sql = "select * from register where email = '" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (!IsPostBack)
            {
                if(sdr.Read())
                {
                    TextBox1.Text = sdr["name"].ToString();
                    TextBox2.Text = sdr["mobile_no"].ToString();
                    TextBox3.Text = sdr["address"].ToString();
                    TextBox5.Text = sdr["pincode"].ToString();

                }
            }
            sdr.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["email"].Equals(""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Information can not get update');", true);
            }
            else
            {
                String query = "update register set name ='" + TextBox1.Text + "', mobile_no='" + TextBox2.Text + "', address='" + TextBox3.Text + "',pincode =" + Convert.ToInt32(TextBox5.Text) + " where email = '" + Session["email"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Information updated');", true);
                Session["name"] = TextBox1.Text;
                Session["mobile_no"] = TextBox2.Text;
                Session["address"] = TextBox3.Text;
                Session["pincode"] = TextBox5.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("changePassword.aspx");
        }
    }
}