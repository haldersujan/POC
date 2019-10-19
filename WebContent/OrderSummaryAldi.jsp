<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Order Summary</title>
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
            <form action="OrderRegister" method="post">
                <h2>Here is your Order Summary !</h2>
                
                <div class="form-wrapper">
                    <label for="">Milk - £1.50</label> 
                </div>
                <div class="form-wrapper">
                    <label for="">Ice Cream - £3.50</label>
                </div>
                <div class="form-wrapper">
                    <label for="">Magazines - £15.00</label>
                </div>
                <div class="form-wrapper">
                    <label for="">Total Expense</label> 
                    <input name="total" type="text" readonly class="form-control" value="20.00">
                </div>
                <!--  <input type="submit" value="Register Now" class="button"> -->
                <button>Proceed to Payment</button>
            </form>
		</div>
	</body>
</html>