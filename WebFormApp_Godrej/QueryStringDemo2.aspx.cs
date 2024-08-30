using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class QueryStringDemo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get or Post
            //Get - Request.QueryString["param"]
            //Post - Request.Form["key"]

            string name = Request.QueryString["username"];
            string address = Request.QueryString["address"]; 
            Response.Write("<h2> username = " + name + "</h2>");
            Response.Write("<h2> address = " + address + "</h2>");
        }
    }
}