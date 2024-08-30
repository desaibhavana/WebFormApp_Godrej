using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class CookieLogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies.Get("LoginCookie");
            if (cookie != null)
            {
                txtUserName.Text =  cookie.Values["username"];
                //  txtPWD.Text =cookie.Values["pwd"];  //passing value from server to UI in rednder

                txtPWD.Attributes.Add("value", cookie["pwd"]); //clientside
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ////Create cookie - name as LoginCookie
            //HttpCookie cookie = new HttpCookie("LoginCookie");

            ////if Rememberme checkbox ischecked is true
            ////add two values in cookie - username and password
            ////create persistant cookie

            //if (chkRememberME.Checked == true)
            //{
            //    cookie.Values["username"] = txtUserName.Text;
            //    cookie.Values["pwd"] = txtPWD.Text;

            //    cookie.Expires = DateTime.Now.AddDays(1);
            //    Response.Cookies.Add(cookie);
            //}

            ////navigate to CookiePage2
            //Response.Redirect("CookieLogin2.aspx");

            if (txtUserName.Text== string.Empty)
            {
                return;
            }

            Session["username"] = txtUserName.Text;
            Response.Redirect("ServerStateMgt.aspx");
        }
    }
}