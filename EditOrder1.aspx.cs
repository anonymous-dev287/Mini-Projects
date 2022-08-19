using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project2114
{
    public partial class EditOrder1 : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["sno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];


                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                        Label1.Text = Request.QueryString["sno"];
                        Label2.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label1.Text);
                        //sr1 = sr1 + 1;


                        if (sr == sr1)
                        {
                            Label1.Text = dt.Rows[i]["sno"].ToString();
                            Label2.Text = dt.Rows[i]["Product_id"].ToString();
                            Label3.Text = dt.Rows[i]["Product_name"].ToString();
                            TextBox1.Text = dt.Rows[i]["quantity"].ToString();
                            Label5.Text = dt.Rows[i]["price"].ToString();
                            Label6.Text = dt.Rows[i]["total"].ToString();

                            break;

                        }
                    }
                }
                else
                {
                }

            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(TextBox1.Text);
            int cost;
            cost = Convert.ToInt32(Label5.Text);
            int totalcost;
            totalcost = cost * q;
            Label6.Text = totalcost.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());

                sr1 = Convert.ToInt32(Label1.Text);



                if (sr == sr1)
                {
                    dt.Rows[i]["sno"] = Label1.Text;
                    dt.Rows[i]["Product_id"] = Label2.Text;
                    dt.Rows[i]["Product_name"] = Label3.Text;
                    dt.Rows[i]["quantity"] = TextBox1.Text;
                    dt.Rows[i]["price"] = Label5.Text;
                    dt.Rows[i]["total"] = Label6.Text;
                    dt.AcceptChanges();

                    break;

                }
            }
            Response.Redirect("AddtoCart1.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("products2.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact_us.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}