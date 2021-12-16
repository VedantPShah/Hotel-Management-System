<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title></title>

  <!-- Stylesheets -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/set1.css">

  <!--Google Fonts-->
  <link href='https://fonts.googleapis.com/css?family=Playfair+Display' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

    <style>
        /*body{
            display:none;
        }*/
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div id="main-wrapper">

  <div class="container-fluid">
    <div class="row">
      <div class="col-md-6 left-side">
        <header>
          
          <h3>Login</h3>
      </header>
      </div>
      <div class="col-md-6 right-side" style="padding-top:100px;">
          <span class="input input--hoshi">
          <asp:TextBox ID="roomnumberlo" runat="server" CssClass="input__field input__field--hoshi"></asp:TextBox>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="roomnumber">
            <span class="input__label-content input__label-content--hoshi">Room Number</span>
          </label>
        </span>
          <span class="input input--hoshi">
          <asp:TextBox ID="passwordlo" runat="server" CssClass="input__field input__field--hoshi" TextMode="Password"></asp:TextBox>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="password">
            <span class="input__label-content input__label-content--hoshi">Password</span>
          </label>
        </span>
        <div class="cta">
          <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary pull-left" Text="LOG-IN NOW" OnClick="Button2_Click"/>
           <span><a href="SignUp.aspx">
            I am new member
            </a></span>
        &nbsp;</div>
      </div>
    </div>
  </div>

</div> <!-- end #main-wrapper -->
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
    </form>
</body>
</html>
