using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["Price"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    public string ItemsName()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        string name = "";
        while (i < nrow)
        {
            name = name+" " + Convert.ToString(dt.Rows[i]["IName"].ToString());

            i = i + 1;
        }
        return name;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/Account/Login.aspx?msg=Please Login To View Cart");
        else
            UserL.Text=Session["user"].ToString();
        // 

        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Sl No");
            dt.Columns.Add("Image");
            dt.Columns.Add("IName"); 
            dt.Columns.Add("Price");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
//Add the connection string here
        String mycon = "";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from [dbo].[Item] where ID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Sl No"] = 1;
                    dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["IName"] = ds.Tables[0].Rows[0]["IName"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[3].Text = "Total Amount : Rs. " + grandtotal().ToString();
                    GridView1.FooterRow.Cells[2].Text = "Quantity : " + GridView1.Rows.Count.ToString();
                    Response.Redirect(Request.UrlReferrer.ToString());

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    //Add Connection string                    
                    String mycon = ""; 
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from [dbo].[Item] where ID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Sl No"] = sr + 1;
                    dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                    dr["IName"] = ds.Tables[0].Rows[0]["IName"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[3].Text = "Total Amount : Rs. " + grandtotal().ToString();
                    GridView1.FooterRow.Cells[2].Text = "Quantity : " + GridView1.Rows.Count.ToString();
                    Response.Redirect(Request.UrlReferrer.ToString());

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[3].Text = "Total Amount : Rs. " + grandtotal().ToString();
                    GridView1.FooterRow.Cells[2].Text = "Quantity : " + GridView1.Rows.Count.ToString();
                    

                }


            }
            

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["Sl No"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text ;
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
            dt.Rows[i - 1]["Sl No"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect(Request.UrlReferrer.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string items=ItemsName();
        string str = "INSERT INTO [dbo].[Order] ([Uname], [Iname], [Qnt], [TPrice], [Status]) VALUES ('"+Session["user"]+"', '"+items+"', "+GridView1.Rows.Count.ToString()+", "+grandtotal()+", "+1+")";
        Response.Redirect("Checkout.aspx?total="+grandtotal()+"&str="+str);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string items = ItemsName();
        string str = "INSERT INTO [dbo].[Order] ([UID], [Iname], [Qnt], [TPrice], [Status]) VALUES ('" + Session["user"] + "', '" + items + "', " + GridView1.Rows.Count.ToString() + ", " + grandtotal() + ", " + 1 + ")";
        Response.Redirect("Checkout.aspx?total=" + grandtotal() + "&str=" + str);
    }
}
