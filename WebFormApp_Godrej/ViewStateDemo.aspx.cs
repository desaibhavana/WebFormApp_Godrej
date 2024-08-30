using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class ViewStateDemo : System.Web.UI.Page
    {
        int counter;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                //Label1.Text = "View State Demo";

                counter = 0;
                ViewState["count"] = counter;   //creating viewstate property
            }
        }

        protected void btnCounter_Click(object sender, EventArgs e)
        {
            //increase counter value by 1 and display the same on label
            counter = (int)ViewState["count"]; //reading value of ViewStare count property

            counter++;

            ViewState["count"] = counter;  //store incremented value back in viewstate property

            Label1.Text = counter.ToString(); //display incremented value on label

        }
    }
}