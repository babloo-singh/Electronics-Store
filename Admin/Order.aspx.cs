﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
            Response.Redirect("Default.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}