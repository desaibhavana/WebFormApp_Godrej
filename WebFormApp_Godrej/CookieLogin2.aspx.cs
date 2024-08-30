using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class CookieLogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies.Get("LoginCookie");
            if (cookie != null)
            {
                Label1.Text = "Welcome " + cookie.Values["username"];
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //delete cookie and redirect to CookieLogin1
            HttpCookie cookie = Request.Cookies.Get("LoginCookie");
            if (cookie != null)
            {
               cookie.Expires = DateTime.Now;
                Response.Cookies.Add(cookie);
                
            }
            Response.Redirect("CookieLogin1.aspx");

        }
    }
}