using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project2114
{
    public partial class addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("Product_id");
                dt.Columns.Add("Product_name");
                dt.Columns.Add("quantity");
                dt.Columns.Add("Price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("Product_image");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=LAPTOP-EPAOJUO7\\SQLEXPRESS;Initial Catalog=project_2114;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Cart where Product_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["Product_id"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["Product_name"] = ds.Tables[0].Rows[0]["Product_name"].ToString();
                        dr["Product_image"] = ds.Tables[0].Rows[0]["Product_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        String p = ds.Tables[0].Rows[0]["Price"].ToString();
                        int price = Convert.ToInt32(p);
                        //int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"]);
                        /*int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"]);
                        string pr = price.ToString();*/
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=LAPTOP-EPAOJUO7\\SQLEXPRESS;Initial Catalog=project_2114;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Cart where Product_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["Product_id"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["Product_name"] = ds.Tables[0].Rows[0]["Product_name"].ToString();
                        dr["Product_image"] = ds.Tables[0].Rows[0]["Product_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                Label2.Text = GridView1.Rows.Count.ToString();

            }


        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        
        

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {

            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;

                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("addtocart.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("placeorder.aspx");
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

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}

        
