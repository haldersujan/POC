<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Update Contribution Limit</title>
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
                <h2>Update you contribution percentage and Alert Limit.</h2>
                <div class="form-wrapper">
                    <label for="">Contribution %</label>
                    <select name="contribution" class="form-control">
   						 <option value="0.25">0.25 %</option>
   						 <option value="0.5">0.5 %</option>
   						 <option value="0.75">0.75 %</option>
   						 <option value="1">1 %</option>
   						 <option value="1.5">1.5 %</option> 
  						 <option value="2">2 %</option>
   						 <option value="5">5 %</option>
   						 <option value="7">7 %</option>
   						 <option value="10">10 %</option>
  					</select>
                </div>
                <div class="form-wrapper">
                    <label for="">Alert When Contribution is over £ </label>
                    <input name="alertAmount" type="text" class="form-control">
                </div>
                <!--  <input type="submit" value="Register Now" class="button"> -->
                <button>Update Details</button>
            </form>
		</div>
	</body>
</html>