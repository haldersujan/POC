<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

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
                <h2>Welcome !</h2>
                <h2> You can perform the below actions.</h2>
                
                <div class="form-wrapper">
                    <a href="/InsurancePOC/UpdateContributionLimit.jsp" >Update contribution limit.</a>
                </div>
                <div class="form-wrapper">
                    <a href="/InsurancePOC/OneOffTopUp.jsp" >Top Up your retirement pot.</a>
                </div>
                
                <div class="form-wrapper">
                    <a href="/InsurancePOC/RegularTopUp.jsp" >Create a Regular Top Up for your retirement pot.</a>
                </div>
                 <div class="form-wrapper">
                    <a href="/InsurancePOC/CurrentPotValue.jsp" >Explore you current pot value.</a>
                </div>
                <div class="form-wrapper">
                    <a href="/InsurancePOC/MonthlyStatements.jsp" >Your monthly statements.</a>
                </div>
                <div class="form-wrapper">
                    <a href="/InsurancePOC/PensionGifting.jsp" >Pension Gifting.</a>
                </div>
                 <div class="form-wrapper">
                    <a href="/InsurancePOC/TransactionSummary.jsp" >Transaction Summary.</a>
                </div>
		</div>

	
</body>
</html>