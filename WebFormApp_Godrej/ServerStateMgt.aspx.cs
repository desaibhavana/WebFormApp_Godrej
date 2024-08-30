using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class ServerStateMgt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<h2> Session id = " + Session.SessionID + "</h2>");
            Response.Write("<h2> Session username = " + Session["username"] +  "</h2>");
            Response.Write("<hr/>");
            Response.Write("<h2 style='color:red;'> Application count = " + Application["count"] + "</h2>");


        }
    }
}