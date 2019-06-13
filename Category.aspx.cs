using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string set=Request.QueryString["cat"];
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ViewProduct")
            Response.Redirect("~/ViewProduct.aspx?id="+e.CommandArgument);
        if (e.CommandName == "AddCart")
            Response.Redirect("~/Cart.aspx?id=" + e.CommandArgument);
    }
}