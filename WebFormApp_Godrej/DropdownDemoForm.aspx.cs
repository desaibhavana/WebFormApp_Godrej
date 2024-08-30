using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp_Godrej
{
    public partial class DropdownDemoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DDLCountry.Items.Add("Select");
                DDLCountry.Items.Add("India");
                DDLCountry.Items.Add("USA");
            }
      
        }

        protected void DDLCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            ddlState.Items.Add("Select");
            if (DDLCountry.SelectedValue == "India")
            {
                ddlState.Items.Add("Maharashtra");
                ddlState.Items.Add("Kerala");
            }
            else if (DDLCountry.SelectedValue == "USA")
            {
                ddlState.Items.Add("New York");
                ddlState.Items.Add("Florida");
            }
         
            
        }
    }
}