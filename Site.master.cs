using System;
using System.Collections.Generic;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)

    {

        Response.Redirect("login.aspx");

    }
}