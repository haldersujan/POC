<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>One Of Top Up</title>
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
                <h2>Top Up your pension pot.</h2>
                
                <div class="form-wrapper">
                    <label for="">Top Up Amount £ </label>
                    <input name="topUpAmount" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Account Number</label>
                    <input name="accno" type="text" class="form-control">
                </div>
                <div class="form-wrapper">
                    <label for="">Sortcode</label>
                    <input name="sortcode" type="text" class="form-control">
                </div>
                <!--  <input type="submit" value="Register Now" class="button"> -->
                <button>Confirm Top Up</button>
            </form>
		</div>
	</body>
</html>