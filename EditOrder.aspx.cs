using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace project2114
{
    public partial class EditOrder : System.Web.UI.Page
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
                            DropDownList1.Text = dt.Rows[i]["quantity"].ToString();
                            Label5.Text = dt.Rows[i]["Price"].ToString();
                            Label6.Text = dt.Rows[i]["totalprice"].ToString();

                            break;

                        }
                    }
                }
                else
                {
                }

            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int q;
            q = Convert.ToInt32(DropDownList1.Text);
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
                    dt.Rows[i]["quantity"] = DropDownList1.Text;
                    dt.Rows[i]["Price"] = Label5.Text;
                    dt.Rows[i]["totalprice"] = Label6.Text;
                    dt.AcceptChanges();

                    break;

                }
            }
            Response.Redirect("addtocart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx");

        }

        
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact_us.aspx");

        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");

        }

        
    }
}
