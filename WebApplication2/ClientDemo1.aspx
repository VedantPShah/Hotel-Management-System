<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientDemo1.aspx.cs" Inherits="WebApplication2.ClientDemo1" %>

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
	
  <!--Google Fonts-->
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Playfair+Display' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
	
	<script src="js/jquery-3.1.0.min.js"></script>
	<style>
        .hid
        {
           display:none;
        }
        .chkb input
        {
            margin-top:50px;
        }
        #hk table
        {
            font-family: 'lato', sans-serif;
            font-size: 20px;
            letter-spacing: 0.2em;
            //text-transform: uppercase;
            font-weight: 100;
            color: #888;
        }
	        #hk table,th,tr,td {
	            width:80%;
	        }
            #res table
            {
                font-family: 'lato', sans-serif;
                font-size: 20px;
                letter-spacing: 0.2em;
                //text-transform: uppercase;
                font-weight: 100;
                color: #888;
            }
	        #res table,th,tr {
	            width:95%;
	        }
            #res td
            {
                width:75%;
                padding-left:1%;
                padding-right:1%;
            }
            #res h3,#bar h3{
                color:#3A7EF5;
                font-family:Calibri light;
                letter-spacing:0.1em;
                font-weight:100;
            }
            .bart
            {
                border:none;
                border-bottom:1px #DDD solid;
                margin-bottom:20px;
                width:72%;
                margin-right:50px;
            }
            .bart:focus
            {
                border:none;
                border-bottom:1px #3A7EF5 solid;
                transition: border-bottom 1s;
                outline:none;
                
            }
            .bart:hover
            {
                border:none;
                border-bottom:1px #444 solid;
                transition: border-bottom 1s;
                outline:none;
            
            }
            #bar table
            {
                font-family: 'lato', sans-serif;
                font-size: 20px;
                letter-spacing: 0.2em;
                //text-transform: uppercase;
                font-weight: 100;
                color: #888;
            }
	        #bar table,th,tr{
	            width:95%;
	        }
            #bar td{
                width:75%;
                padding-left:1%;
                padding-right:1%;
            } 
            .rest
        {
            border:none;
            border-bottom:1px #DDD solid;
            margin-bottom:20px;
            width:72%;
            margin-right:50px;
        }
        .rest:focus
        {
            border:none;
            border-bottom:1px #3A7EF5 solid;
            transition: border-bottom 1s;
            outline:none;
            margin-right:25px;
        }
        .rest:hover
        {
            border:none;
            border-bottom:1px #444 solid;
            transition: border-bottom 1s;
            outline:none;
            
        }
         .hkt
        {
            border:none;
            border-bottom:1px #DDD solid;
            margin-bottom:20px;
            width:95%;
        }
        .hkt:focus
        {
            border:none;
            border-bottom:1px #3A7EF5 solid;
            transition: border-bottom 1s;
            outline:none;
            
        }
        .hkt:hover
        {
            border:none;
            border-bottom:1px #444 solid;
            transition: border-bottom 1s;
            outline:none;
            
        }
	</style>
</head>

<body>
<form id="form1" runat="server">
<div id="main-wrapper" class="hid">

<div class="container-fluid">
    <div class="row">
    	<div class="col-md-6 left-side top-to-bottom">
        	<header>
          		<!--<span>Need an account?</span>-->
          		<h3>Need Anything ?</h3>
        	</header>
        	<br><br><br><br>
        	<ul class="social1">
				<li onClick="hk()">House Keeping </li>
				<br>
				<li onClick="res()">Restaurant </li>
				<br>
				<li onClick="rs()">Room Service </li>
				<br>
				<li onClick="bar()">Bar </li>
				<br>
				<li onClick="rec()">Reception </li>
			</ul>
     	
     	<ul class="social list-inline">
			<li><a onclick="out()">LOG OUT</a></li><font color="#3A7EF5" size="+1"> -</font><li><a href="CheckOut.aspx">CHECK OUT</a></li>
        </ul>
      	</div>
      	
      	<div class="verticalLine">
		</div>
      	
      	<div class="col-md-6 right-side"  >
      	
      	<center>
      	<!--<div class="right-block">-->
      	
				<div id="hk">
					<h1>House Keeping</h1>
					<hr>
					<br />
                    <br />
                    <table>
                   <!--     <tr><th>Item</th><th>Quantity</th></tr>-->
                    
                    <tr>
                        <td>Shower Kit</td> 
                        <td><asp:TextBox ID="ShowerKit" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Tea</td>
                        <td><asp:TextBox ID="Tea" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Coffee</td>
                        <td><asp:TextBox ID="Coffee" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>
                    
                    <tr>
                        <td>Shampoo</td>
                        <td><asp:TextBox ID="Shampoo" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Shower Gel</td>
                        <td><asp:TextBox ID="ShowerGel" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Towel</td>
                        <td><asp:TextBox ID="Towel" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>
                    
                    <tr>
                        <td>Milk Powder</td>
                        <td><asp:TextBox ID="MilkPowder" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Dental Kit</td>
                        <td><asp:TextBox ID="DentalKit" runat="server" TextMode="Number" CssClass="hkt" placeholder="0"></asp:TextBox></td>
                    </tr>
                    </table>
                    <br /><br />
                    <asp:Button ID="hkb" runat="server" Text="SUBMIT" CssClass="btn btn-primary" OnClick="hkbb"></asp:Button>
				</div>	


				<div id="res">
					<h1>Restaurant </h1>
					<hr>
					<br>
                    <div style="overflow-y:scroll; width:100%; height:470px;">
                        

                        <table>
                            <tr><td><h3>VEG APPETIZER</h3></td>
                                 <td><h3>QUANTITY</h3></td>
                                <td><h3>PRICE</h3></td>
                            </tr>
                            <tr>
                                <td>Hara Bhara Paneer</td>
                                <td><asp:TextBox ID="HaraBharaPaneer" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>150</td>
                            </tr>
                            <tr>
                                <td>Cheese Balls</td>
                                <td><asp:TextBox ID="CheeseBalls" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>120</td>
                            </tr>
                            <tr><td><h3>NON-VEG APPETIZER</h3></td></tr>
                            <tr>
                                <td>Grilled Prawns</td>
                                <td><asp:TextBox ID="GrilledPrawns" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>250</td>
                            </tr>
                            <tr>
                                <td>Chicken Tikka</td>
                                <td><asp:TextBox ID="ChickenTikka" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>200</td>
                            </tr>
                            <tr><td><h3>VEG MAIN</h3></td></tr>
                            <tr>
                                <td>Dal Fry(with rice)</td>
                                <td><asp:TextBox ID="DalFrywrice" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>300</td>
                            </tr>
                            <tr>
                                <td>Kadhai Paneer</td>
                                <td><asp:TextBox ID="KadhaiPaneer" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>250</td>
                            </tr>
                            <tr>
                                <td>Bhindi Masala</td>
                                <td><asp:TextBox ID="BhindiMasala" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>180</td>
                            </tr>
                            <tr><td><h3>NON-VEG MAIN</h3></td></tr>
                            <tr>
                                <td>Butter Chicken</td>
                                <td><asp:TextBox ID="ButterChicken" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>280</td>
                            </tr>
                            <tr>
                                <td>Mutton Roganjosh</td>
                                <td><asp:TextBox ID="MuttonRoganjosh" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>300</td>
                            </tr>
                            <tr>
                                <td>Prawn Thai Green Curry(with rice)</td>
                                <td><asp:TextBox ID="PrawnThaiGreenCurrywrice" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>400</td>
                            </tr>
                            <tr><td><h3>ROTIS</h3></td></tr>
                            <tr>
                                <td>Butter naan</td>
                                <td><asp:TextBox ID="Butternaan" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>40</td>
                            </tr>
                            <tr>
                                <td>Tawa roti</td>
                                <td><asp:TextBox ID="Tawaroti" runat="server" CssClass="rest" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>30</td>
                            </tr>
                        </table>
                        <br />
                        
                    </div>
                    <br />
                    <div class="cta">
					        <asp:Button ID="resb" runat="server" CssClass="btn btn-primary" Text="ORDER" OnClick="resbb"></asp:Button>
        			    </div>
				</div>


				<div id="rs">
					<h1>Room Service</h1>
					<hr>
					<br>
					
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" cssClass="chkb">
                        <asp:ListItem Text="Room Cleaning" Value="Room Cleaning">Room Cleaning</asp:ListItem>
                        <asp:ListItem Text="Changing Linens" Value="Changing Linens">Changing Linens</asp:ListItem>
                        <asp:ListItem Text="Trash Removal" Value="Trash Removal">Trash Removal </asp:ListItem>
                        <asp:ListItem Text="Cleaning Sinks" Value="Cleaning Sinks">Cleaning Sinks</asp:ListItem>
                        <asp:ListItem Text="Mopping" Value="Mopping">Mopping</asp:ListItem>
                        <asp:ListItem Text="Vaccum Carpet" Value="Vaccum Carpet">Vaccum Carpet</asp:ListItem>
                    </asp:CheckBoxList>
					<br />
 					<div class="cta">
					  <asp:Button ID="rsb" runat="server" CssClass="btn btn-primary" Text="SUBMIT" OnClick="rsbb"></asp:Button>
        			</div>
				    
                  </div>


				<div id="bar">
					<h1>Bar</h1>
					<hr>
					<br>
                    <div style="overflow-y:scroll; width:100%; height:450px;">
                        
                        <table>
                            <tr><td><h3>COCKTAILS</h3></td>
                                <td><h3>QUANTITY</h3></td>
                                <td><h3>PRICE</h3></td>
                            </tr>
                            
                            <tr>
                                <td>Margarita</td>
                                <td><asp:TextBox ID="Margarita" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>160</td>
                            </tr>
                            <tr>
                                <td>Cosmopolitan</td>
                                <td><asp:TextBox ID="Cosmopolitan" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>250</td>
                            </tr>
                            <tr>
                                <td>Bloody Mary</td>
                                <td><asp:TextBox ID="BloodyMary" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>200</td>
                            </tr>
                            <tr>
                                <td>Whisky Sour</td>
                                <td><asp:TextBox ID="WhiskySour" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>230</td>
                            </tr>
                            <tr>
                                <td>Pina Colada</td>
                                <td><asp:TextBox ID="PinaColada" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>180</td>
                            </tr>
                            <tr><td><h3>BEER (CAN)</h3></td></tr>
                            <tr>
                                <td>Leffe Brune</td>
                                <td><asp:TextBox ID="LeffeBrune" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>150</td>
                            </tr>
                            <tr>
                                <td>Kingfisher Ultra</td>
                                <td><asp:TextBox ID="KingfisherUltra" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>130</td>
                            </tr>
                            <tr>
                                <td>Budweiser</td>
                                <td><asp:TextBox ID="Budweiser" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>160</td>
                            </tr>
                            <tr>
                                <td>Tuborg</td>
                                <td><asp:TextBox ID="Tuborg" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>170</td>
                            </tr>
                            <tr>
                                <td>Carlsberg</td>
                                <td><asp:TextBox ID="Carlsberg" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>170</td>
                            </tr>
                            <tr><td><h3>VODKA</h3></td></tr>
                            <tr>
                                <td>Grey Goose</td>
                                <td><asp:TextBox ID="GreyGoose" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>335</td>
                            </tr>
                            <tr>
                                <td>Bacardi</td>
                                <td><asp:TextBox ID="Bacardi" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>120</td>
                            </tr>
                            <tr>
                                <td>Absolut</td>
                                <td><asp:TextBox ID="Absolut" runat="server" CssClass="bart" TextMode="Number" placeholder="0"></asp:TextBox></td>
                                <td>235</td>
                            </tr>
                        </table>
                        <br />
                    </div>
                    <br />
                        <div class="cta">
					      <asp:Button ID="barb" runat="server" CssClass="btn btn-primary" Text="ORDER" OnClick="barbb"></asp:Button>
        			    </div>
				</div>


				<div id="rec">
					<h1>Reception</h1>
					<hr>
					<br>
					<!--<font size="+2" style="text-underline-position: below;" face="Calibri Light">Leave Your Message Below</font>-->
					
					<asp:TextBox ID="mes" runat="server" cssClass="textarea" TextMode="MultiLine" placeholder="Leave your Message here"></asp:TextBox>
					<div class="cta">
					<br><br><br>
					<asp:Button ID="recb" runat="server" CssClass="btn btn-primary" Text="Send" OnClick="recbb"></asp:Button>
                        
        			</div>
                    
				</div>
		
		
		</center>
		</div>
	</div>
</div>

</div>


<!-- Scripts -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>
<script src="js/classie.js"></script>
<script>
    $(function () {
        setTimeout(function () {
            $("#main-wrapper").removeClass('hidden').fadeIn("slow");
        }, 500);

    })();

	function hk()
	{
		$("#hk").css("display","block");
		$("#res").css("display","none");
		$("#rs").css("display","none");
		$("#bar").css("display","none");
		$("#rec").css("display","none");
	}
	
	function res()
	{
		$("#hk").css("display","none");
		$("#res").css("display","block");
		$("#rs").css("display","none");
		$("#bar").css("display","none");
		$("#rec").css("display","none");
	}
	
	function rs()
	{
		$("#hk").css("display","none");
		$("#res").css("display","none");
		$("#rs").css("display","block");
		$("#bar").css("display","none");
		$("#rec").css("display","none");
	}
	
	function bar()
	{
		$("#hk").css("display","none");
		$("#res").css("display","none");
		$("#rs").css("display","none");
		$("#bar").css("display","block");
		$("#rec").css("display","none");
	}

    function out()
    {
        $("body").fadeOut();
        setTimeout(function () {
            window.location.assign("Flyout.html");
        }, 1500);
    }
	function rec()
	{
		$("#hk").css("display","none");
		$("#res").css("display","none");
		$("#rs").css("display","none");
		$("#bar").css("display","none");
		$("#rec").css("display","block");
	}
	
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
    
</form>
</body>
</html>
