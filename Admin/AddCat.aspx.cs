using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddCat : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
            Response.Redirect("Default.aspx");
//Add the connection string here
        con = new SqlConnection("");
                con.Open();
    }
    protected void CatBtn_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO [dbo].[Cate] ([CName]) VALUES ('" + CatTxt.Text + "');", con);
        cmd.ExecuteNonQuery();
        con.Close();
        CatTxt.Text = "";
        Response.Redirect("~/Admin/AddCat.aspx");
    }
}