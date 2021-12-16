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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn;
        String admin;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("select * from SignUpTable3 where Room_No='"+roomnumberlo.Text+"' and Password='"+passwordlo.Text+"'", conn);
            //cmd.ExecuteNonQuery();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (roomnumberlo.Text == "rooms" && passwordlo.Text == "rooms123")
            {
                Session["user"] = "Room Service";
                Response.Redirect("AdminDemo1.aspx");
            }
            else if (roomnumberlo.Text == "housek" && passwordlo.Text == "housek123")
            {
                Session["user"] = "House Keeping";
                Response.Redirect("AdminDemo1.aspx");
            }
            else if (roomnumberlo.Text == "recep" && passwordlo.Text == "recep123")
            {
                Session["user"] = "Reception";
                Response.Redirect("AdminDemo1.aspx");
            }
            else if (roomnumberlo.Text == "bar" && passwordlo.Text == "bar123")
            {
                Session["user"] = "Bar";
                Response.Redirect("AdminDemo1.aspx");
            }
            else if(roomnumberlo.Text == "resta" && passwordlo.Text == "resta123")
            {
                Session["user"] = "Restaurant";
                Response.Redirect("AdminDemo1.aspx");
            }
            else
            {
                if (sdr.Read())
                {
                    Session["user"] = roomnumberlo.Text;
                    Response.Redirect("Flyin.html");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            conn.Close();

        }
    }
}