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
    public partial class CheckOut: System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string Query = "DELETE FROM SignUpTable3 WHERE Room_No='" + (String)Session["user"] + "'";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.ExecuteNonQuery();
            string Query1 = "DELETE FROM Reception WHERE room='" + (String)Session["user"] + "'";
            SqlCommand cmd1 = new SqlCommand(Query1, conn);
            cmd1.ExecuteNonQuery();
            string Query2 = "DELETE FROM Bar WHERE room='" + (String)Session["user"] + "'";
            SqlCommand cmd2 = new SqlCommand(Query2, conn);
            cmd2.ExecuteNonQuery();
            string Query3 = "DELETE FROM House_Keeping WHERE room='" + (String)Session["user"] + "'";
            SqlCommand cmd3 = new SqlCommand(Query3, conn);
            cmd3.ExecuteNonQuery();
            string Query4 = "DELETE FROM Room_Service WHERE room='" + (String)Session["user"] + "'";
            SqlCommand cmd4 = new SqlCommand(Query4, conn);
            cmd4.ExecuteNonQuery();
            string Query5 = "DELETE FROM Restaurant WHERE room='" + (String)Session["user"] + "'";
            SqlCommand cmd5 = new SqlCommand(Query5, conn);
            cmd5.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Flyout.html");
        }
    }
}