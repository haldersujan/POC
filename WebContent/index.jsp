<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
  <script src="https://apis.google.com/js/api:client.js"></script>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
  var googleUser = {};
  var startApp = function() {
    gapi.load('auth2', function(){
      // Retrieve the singleton for the GoogleAuth library and set up the client.
      auth2 = gapi.auth2.init({
        client_id: '764708699926-tja48cm93e8uil2hsvtg0r9iblfgji4c.apps.googleusercontent.com'
        //cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        //scope: 'additional_scope'
      });
      attachSignin(document.getElementById('customBtn'));
    });
  };

  function attachSignin(element) {
    console.log(element.id);
    auth2.attachClickHandler(element, {},
        function(googleUser) {
          document.getElementById('name').innerText = "Signed in: " +
              googleUser.getBasicProfile().getName();
          
          var data = {
        		    name: googleUser.getBasicProfile().getName(),
        		    email: googleUser.getBasicProfile().getEmail(),
        		    id: googleUser.getBasicProfile().getId()
        		};
          $.post('Request',$.param(data), function(response) {
              //alert(data);
          });
          
    	window.location.href = "http://localhost:8081/InsurancePOC/Landing.jsp";

        }, function(error) {
          alert(JSON.stringify(error, undefined, 2));
        });
  }
  </script>
  
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            a:focus {
                outline: none !important;
            }
            body {
                background: #f0f0f5;
            }
            .login-section {
                width: 100%;  
                min-height: 100vh;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                padding: 15px;
                background-position: center;
            }
            .wrapper {
                width: 500px;
            }
            .form-title {
                width: 100%;
                display: block;
                font-size: 40px;
                color: #555555;
                line-height: 1.2;
                text-align: center;
                padding-bottom: 10px;
            }
            .btn-google {
                color: #fff;
                font-size: 20px;
                line-height: 1.2;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 15px;
                border-radius: 10px;
                box-shadow: 0 1px 5px 0px rgba(0, 0, 0, 0.2);
                transition: all 0.4s;
                position: relative;
                z-index: 1;
                text-decoration: none;
                background: linear-gradient(45deg, #d6d6f5,#a366ff);
            }
            .btn-google img {
                width: 30px;
                margin-right: 15px;
                padding-bottom: 3px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="login-section">
                <div class="wrapper" id="gSignInWrapper">
                    <form class="login-form">
                        <span class="form-title">
                            Sign In With
                        </span>
                        <a href="#" class="btn-google"   class="customGPlusSignIn" id="customBtn" >
                                <img src="https://img.icons8.com/color/48/000000/google-logo.png">
                            Google
                        </a>
                    </form>
                </div>
            </div>
        </div>
        <div id="name"></div>
        <script>startApp();</script>
    </body>
</html>