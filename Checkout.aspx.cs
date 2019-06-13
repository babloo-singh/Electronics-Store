using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string total, str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["total"] == null)
            Response.Redirect("Default.aspx");
         total=Request.QueryString["total"];
         str = Request.QueryString["str"];
        Button1.Text = "Pay : Rs" + total;
//Add the connection string here
        con = new SqlConnection("");
                con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string str1 = "INSERT INTO [dbo].[Payment] ( [Uname], [Amount], [Type], [Bank], [Branch], [CardNo], [CCV], [EntryDate], [UID]) VALUES ( '" + Name.Text + "'," + total + ",'" + Type.Text + "','" + Ba.Text + "','" + Bb.Text + "','" + Cn.Text + "'," + CCV.Text + ",@Date,"+Session["uid"]+")";
        cmd = new SqlCommand(str1, con);
        cmd.Parameters.AddWithValue("@Date",DateTime.Now);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ThankYou.aspx");

    }
}