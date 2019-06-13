using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Account_Register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add the connection string here
        con = new SqlConnection("");
                con.Open();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO [dbo].[User] ([Name], [Address], [City], [Pincode], [Mobile], [Email], [Password]) VALUES ('" + Name.Text + "','" + Add.Text + "','" + City.Text + "'," + Pin.Text + "," + Phn.Text + ",'" + Eml.Text + "','" + Pass.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Name.Text = "";
        Add.Text = "";
        City.Text = "";
        Pin.Text = "";
        Phn.Text = "";
        Eml.Text = "";
        Response.Redirect("~/Admin/Login.aspx?msg=Login With The Created ");

    }
}