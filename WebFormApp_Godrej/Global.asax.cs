using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebFormApp_Godrej
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["count"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
            Application["count"] = (int) Application["count"] + 1;
        }
    }
}