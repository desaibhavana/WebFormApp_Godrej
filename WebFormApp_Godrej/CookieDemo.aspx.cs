using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class CookieDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWriteCookie_Click(object sender, EventArgs e)
        {
            //session cookie
            HttpCookie sCookie = new HttpCookie("sessioncookie");
            sCookie.Values["username"] = "bhavana";
            sCookie.Values["address"] = "mumbai";

            Response.Cookies.Add(sCookie);

            //persistant cookie
            HttpCookie pCookie = new HttpCookie("persistantcookie");
            pCookie.Values["ccno"] = "12345678";
            pCookie.Values["key"] = "1234";

            pCookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(pCookie);

        }

        protected void btnReadCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies.Get("persistantcookie");
            if (cookie != null)
            {
                Response.Write("<h3>" + cookie.Values["ccno"] + "</h3> <br/>");
                Response.Write("<h3>" + cookie.Values["key"] + "</h3> <br/>");
            }
            else
            {
                Response.Write("<h6> cookie not found </h3> <br/>");
            }

        }
    }
}