using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add the connection string here
        con = new SqlConnection("");
                con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from dbo.[Admin] WHERE Username='" + User.Text + "'and Password='" + Pass.Text + "'", con);
        r = cmd.ExecuteReader();
        if (r.HasRows)
        {
            while (r.Read())
            {
                Session["admin"] = r.GetString(1);
                Response.Redirect("~/Admin/AddCat.aspx");
            }
        }
    }
}