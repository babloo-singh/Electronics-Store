using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ReturnUrl"] != null)
            Response.Redirect("~/Account/Manage.aspx");
        string set = Request.QueryString["msg"];
        if (set != null)
            lbl.Text = set;
        else
            lbl.Text = "";
//Add the connection string here
        con = new SqlConnection("");
                con.Open();
    }
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from dbo.[User] WHERE Email='" + UserName.Text + "'and Password='" + Password.Text + "'",con);
        r=cmd.ExecuteReader();
        if (r.HasRows)
        {
            while (r.Read())
            {
                Session["uid"] = r.GetInt32(0);
                Session["user"] = r.GetString(1);
            Response.Redirect("~/Default.aspx");
            }
        }
        
    }
}