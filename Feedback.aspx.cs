using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
//Add the connection string here
        con = new SqlConnection("");
                con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "INSERT INTO [dbo].[Feedback] ([UNAME], [MESSAGE], [ENTRYDATE], [EMAIL]) VALUES ('" + Name.Text + "','" + Msg.Text + "', @Date,'"+Eml.Text+"')";
        cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@Date",DateTime.Now);
        cmd.ExecuteNonQuery();
        con.Close();
        lb.Text = "Thank You For the FeedBack";
    }
}