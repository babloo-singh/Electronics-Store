using System;
using System.Collections.Generic;
using System.Linq;

using Microsoft.AspNet.Membership.OpenAuth;

public partial class Account_Manage : System.Web.UI.Page
{
   
    protected void Page_Load()
    {
        Label4.Text=Session["user"].ToString();
        
        }
        
}

    

    
   