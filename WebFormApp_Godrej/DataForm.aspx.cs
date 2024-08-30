using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ADOLibrary;

namespace WebFormApp_Godrej
{
    public partial class DataForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisconnect_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString );

            string sql = "Select * from dept";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "dept");


            dataGrid.DataSource = ds.Tables["dept"];  //read data from the source
            dataGrid.DataBind(); //binding data with control
        }

        protected void btnConnect_Click(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            EmployeeDataStore dataStore = new EmployeeDataStore(connection);
            try
            {
                List<Employee> emps = dataStore.GetEmployees();
                dataGrid.DataSource = emps;
                dataGrid.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<h2 style=color:red;font-size:20pt;>" + ex.Message + "</h2>");
            }
        }
    }
}