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
    public partial class Delete : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string value = Request.QueryString["room"];
                //string message = Request.QueryString["message"];
                string sess = Session["ses"].ToString(); // AND message='" + message + "'
                string Query = "DELETE FROM " + sess + " WHERE room='" + value + "'";
                SqlCommand cmd = new SqlCommand(Query, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            
                Response.Redirect("AdminDemo1.aspx");
        }
    }
}