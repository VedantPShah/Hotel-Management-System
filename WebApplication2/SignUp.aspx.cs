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
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection conn;   
        String name1, room1, email1, city1, state1, country1, contact1, password2;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            room1 = roomnumber.Text;
            name1 = name.Text;
            email1 = email.Text;
            city1 = city.Text;
            state1 = state.Text;
            country1 = country.Text;
            contact1 = contact.Text;
            password2 = password.Text;
           
            string insertQuery = "insert into SignUpTable3 values ('"+name1+"','"+room1+"','"+email1+"','"+city1+"','"+state1+"','"+country1+"','"+contact1+"','"+password2+"')";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["user"] = room1;
            Response.Redirect("Flyin.html");
        }
    }
}