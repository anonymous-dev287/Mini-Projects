using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;


namespace project2114
{
    public partial class register1 : System.Web.UI.Page
    {
        SqlConnection sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringReg"].ConnectionString);
            sc.Open();

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["addr"] = TextBox1.Text;
            Session["mob"] = TextBox2.Text;


            SqlCommand cmd = new SqlCommand("insert into register values('" + Session["name"].ToString() + "','" + Session["password"].ToString() + "','" + Session["email"].ToString() + "','" + Session["gender"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + DropDownList1.SelectedItem.Text + "','" + TextBox4.Text + "')", sc); ;
            cmd.ExecuteNonQuery();

            Random random = new Random();
            int otp=random.Next(1000, 9999);
            Session["otp"] = otp;
            String body1 = "Hello" + Session["name"].ToString() + "Your Verification Code is" + otp;

            String email = Session["email"].ToString();
            sendMail("starlordshankar@gmail.com", email, email, email, "Shiv Shankar Lime Depot", body1, true);
            Response.Redirect("otp.aspx");

        }
        public static void sendMail(String from,String to, String cc, String bcc, String subject, String body,bool IsHTML)
        {
            MailMessage tm = new MailMessage();
            tm.From = new MailAddress(from);
            tm.To.Add( new MailAddress(to));
            if(cc!=null && cc!="")
            {
                tm.CC.Add(new MailAddress(cc));
            }

            if (bcc != null && bcc != "")
            {
                tm.Bcc.Add(new MailAddress(bcc));
            }
            tm.Subject = subject;
            tm.Body = body;
            tm.IsBodyHtml = IsHTML;
            tm.Priority = MailPriority.Normal;
            tm.SubjectEncoding = System.Text.Encoding.UTF8;
            tm.BodyEncoding = System.Text.Encoding.UTF8;
            SmtpClient tsmtpClient = new SmtpClient("smtp.gmail.com",587);
            tsmtpClient.EnableSsl = true;
            tsmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            tsmtpClient.UseDefaultCredentials = false;
            tsmtpClient.Credentials = new System.Net.NetworkCredential("starlordshankar@gmail.com", "bhavesh2193");
            tsmtpClient.Send(tm);



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact_us_1.aspx");
        }

        
    }
}