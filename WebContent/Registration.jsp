<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Registration Form</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            h3 {
                font-size: 22px;
                margin-bottom: 32px;
                color: #333;
            }
            form {
                width: 50%;
                padding-left: 60px; 
            }
            .form-wrapper {
                margin-bottom: 20px; 
            }
            .form-wrapper label {
                margin-bottom: 9px;
                display: block; 
            }
            .form-control {
                border: 1px solid #ccc;
                width: 50%;
                height: 35px;
                border-radius: 6px;
            }
            button {
                border: none;
                width: 180px;
                margin-top: 20px;
                cursor: pointer;
                padding: 0;
                background: linear-gradient(45deg, #d6d6f5,#a366ff);
                font-size: 20px;
                color: #fff;
                padding: 15px;
            }
            body {
                background: #f0f0f5;
            }
        </style>
	</head>
	<body>
		<div class="wrapper">
            <form action="Register" method="post">
                <h2>Looks like you are yet to register with us !</h2>
                <h2> Please provide the below details.</h2>
                
                <div class="form-wrapper">
                    <label for="">First Name</label>
                    <input name="firstname" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Surname</label>
                    <input name="surname" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Email</label>
                    <input name="email" type="text"  class="form-control" value="<%= session.getAttribute("userEmail")%>">
                </div>
                <div class="form-wrapper">
                    <label for="">Contribution %</label>
                    <select name="contribution" class="form-control">
  						<option value="2">2 %</option>
   						 <option value="5">5 %</option>
   						 <option value="7">7 %</option>
   						 <option value="10">10 %</option>
   						 <option value="15">15 %</option>
   						 <option value="20">20 %</option>   						 
  					</select>
                </div>
                <div class="form-wrapper">
                    <label for="">Alert When Contribution is over £ </label>
                    <input name="alertAmount" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Account Number</label>
                    <input name="accno" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Sortcode</label>
                    <input name="sortcode" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Consent</label>
                    <textarea rows="4" cols="50" readonly>Please provide your consent to for Open Banking APIs.
</textarea>
                </div>
                <div class="form-wrapper">
                    <label for="">Terms & Conditions</label>
                    <textarea rows="4" cols="50" readonly>Please go through the Legals before going ahead.
</textarea>
                </div>
                <!--  <input type="submit" value="Register Now" class="button"> -->
                <button>Register Now</button>
            </form>
		</div>
	</body>
</html>