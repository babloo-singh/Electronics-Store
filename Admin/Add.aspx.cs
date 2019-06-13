using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fileExt, fileName;
            fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExt == ".jpg" || fileExt == ".png")
            {
                try
                {
                    //Add folder path for imaged to store
                    FileUpload1.SaveAs(" " + FileUpload1.FileName);
                    fileName = "Images/" + FileUpload1.FileName;
                    string str = "INSERT INTO [dbo].[Item] ([IName], [Detail], [Price], [Image], [CName], [Model], [Color]) VALUES ('" + Name.Text + "','" + Det.Text + "'," + Price.Text + ",'" + fileName + "','" + DropDownList2.SelectedItem.Value + "','" + Model.Text + "','" + Color.Text + "')" ;
                    cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Name.Text = "";
                    Det.Text = "";
                    Price.Text = "";
                    Model.Text = "";
                    Color.Text = "";
                    Noti.Text = "Product Added";
                }
                catch(Exception ex)
                {
                    Noti.Text = "" + ex.Message.ToString();
                }
            }
        }
    }
}