using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (IsPostBack == false) 
            if (!IsPostBack)
            {
                // txtName.Text = "";
                txtName.Text = string.Empty;
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string name = txtName.Text;

            Response.Write("<h1 style='color:red;'>First message from server</h1>");

            Response.Write("<h3 style='color:blue;'>Welcome " + name + " </h3>");
        }
    }
}                                  