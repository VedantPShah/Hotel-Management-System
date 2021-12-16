<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDemo1.aspx.cs" Inherits="WebApplication2.AdminClient1" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Configuration" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title></title>

  <!-- Stylesheets -->
  <link rel="stylesheet" href="css/style1.css">
  <link rel="stylesheet" href="css/set2.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
  <!--Google Fonts-->
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Playfair+Display' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
	
	<script src="js/jquery-3.1.0.min.js"></script>
	<style>
     /*.btn
     {
         background-color:white;
         border:none;
     }
     .btn:hover
     {
         color:#3A7EF5;
     }*/
     .btn {
  padding: 13px 25px;
  border: none;
  color: #fff;
  display: inline-block;
  //background: #ff5500;
  background: #3A7EF5;
  font-family: 'lato', sans-serif;
  text-transform: uppercase;
  font-size: 10px;
  letter-spacing: 0.12em;
  border-radius: 24px;
}
.btn:hover {
  -webkit-transition: 0.2s ease-in;
  -o-transition: 0.2s ease-in;
  transition: 0.2s ease-in;
  background: #3A7EF5;
}
     .block
{
    width: 20%;
    height: 75%;
    overflow-y:scroll;
    margin:0 2.5% 5% 2.5%;
    float: left;
    position: relative;
    border: #EEE solid 1px;
    //box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 4px 16px 0 rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    font-size:30px;
    font-family:Segoe UI Light;
    padding-left:2%;
    padding-right:2%;
}
h3{
    color:#3A7EF5;
    font-size:40px;
    font-family: Segoe UI Light; 
}
	    ul {
	        list-style-type: none;
	        margin: 0;
	        padding: 0;
	    }
	</style>
</head>
<%  String quer,quer1;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    conn.Open();
    quer = (String)Session["user"];
    if(quer=="Room Service")
    {
        quer1 = "Room_Service";
    }
    else if(quer=="House Keeping")
    {
        quer1 = "House_Keeping";
    }
    else
    {
        quer1 = quer;
    }
    string Query = "select * from "+quer1+" ";
    Session["ses"] = quer1;
    SqlCommand cmd = new SqlCommand(Query,conn);
    //SqlDataAdapter da = new SqlDataAdapter(cmd);
    //DataSet ds = new DataSet();
    SqlDataReader rd = cmd.ExecuteReader();
    //da.Fill(ds);
    Response.Write("<body><div id='main-wrapper' style='margin-bottom: 30%;'><div class='container-fluid'><center>");
    Response.Write("<div class='titleadmin'><h3 class='admin'>"+quer+"");
    Response.Write("</h3><hr></div><br><br>");
    Response.Write("<div class='mainblock'>");

    if (quer == "Room Service")
    {
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                String wording = rd.GetString(1);
                string[] words = wording.Split('$');

                Response.Write("<div class='block'><h3>" + rd.GetString(0) + "</h3><br><ul>");
                foreach (string word in words)
                {
                    Response.Write("<li>"+word+"</li><br>");
                }

                Response.Write("</ul><a href='Delete.aspx?room=" + rd.GetString(0) + "&message=" + rd.GetString(1) + "'><button class='btn btn-primary'>DONE</button></a><br><br>");
                Response.Write("</div>");
            }
        }
    }
    else if(quer == "House Keeping")
    {
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                String wording = rd.GetString(1);
                string[] words = wording.Split('$');

                Response.Write("<div class='block'><h3>" + rd.GetString(0) + "</h3><br><ul>");
                foreach (string word in words)
                {
                    Response.Write("<li>"+word+"</li><br>");
                }

                Response.Write("</ul><a href='Delete.aspx?room=" + rd.GetString(0) + "'><button class='btn btn-primary'>DONE</button></a><br><br>");
                Response.Write("</div>");
            }
        }
    }
    else if(quer == "Restaurant")
    {
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                String wording = rd.GetString(1);
                string[] words = wording.Split('$');

                Response.Write("<div class='block'><h3>" + rd.GetString(0) + "</h3><br><ul>");
                foreach (string word in words)
                {
                    Response.Write("<li>"+word+"</li><br>");
                }

                Response.Write("</ul><a href='Delete.aspx?room=" + rd.GetString(0) + "'><button class='btn btn-primary'>DONE</button></a><br><br>");
                Response.Write("</div>");
            }
        }
    }
    else if(quer == "Bar")
    {
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                String wording = rd.GetString(1);
                string[] words = wording.Split('$');

                Response.Write("<div class='block'><h3>" + rd.GetString(0) + "</h3><br><ul>");
                foreach (string word in words)
                {
                    Response.Write("<li>"+word+"</li><br>");
                }

                Response.Write("</ul><a href='Delete.aspx?room=" + rd.GetString(0) + "'><button class='btn btn-primary'>DONE</button></a><br><br>");
                Response.Write("</div>");
            }
        }
    }
    else if (quer == "Reception")
    {
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                Response.Write("<div class='block'><h3>" + rd.GetString(0) + "</h3><br>" + rd.GetString(1) + "<br><br><a href='Delete.aspx?room=" + rd.GetString(0) + "'><button class='btn btn-primary'>DONE</button></a><br><br>");
                Response.Write("</div>");
            }
        }
    }
    %>
    </div></center>
</div>

</div>
<form id="form1" runat="server">
<footer class="w3-center w3-padding-48 w3-large">
    <a href="Login.aspx">Log Out?</a>
</footer>

<!-- Scripts -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>
<script src="js/classie.js"></script>
<script>
	  (function() {
    // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
    if (!String.prototype.trim) {
      (function() {
        // Make sure we trim BOM and NBSP
        var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
        String.prototype.trim = function() {
          return this.replace(rtrim, '');
        };
      })();
    }

    [].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
      // in case the input is already filled..
      if( inputEl.value.trim() !== '' ) {
        classie.add( inputEl.parentNode, 'input--filled' );
      }

      // events:
      inputEl.addEventListener( 'focus', onInputFocus );
      inputEl.addEventListener( 'blur', onInputBlur );
    } );

    function onInputFocus( ev ) {
      classie.add( ev.target.parentNode, 'input--filled' );
    }

    function onInputBlur( ev ) {
      if( ev.target.value.trim() === '' ) {
        classie.remove( ev.target.parentNode, 'input--filled' );
      }
    }
  })();
</script>

</body>
    
</form>

</html>
