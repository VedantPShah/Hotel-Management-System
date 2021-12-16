using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class AdminClient1 : System.Web.UI.Page
    {
        //SqlConnection conn;
        //string quer;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            
            /*quer = Session["user"].ToString();
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string Query = "select * from "+quer+" "; 
            SqlCommand cmd = new SqlCommand(Query,conn);
            SqlDataReader rd = cmd.ExecuteReader();
            rd.Read();*/
            
        }
    }
}