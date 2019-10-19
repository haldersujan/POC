<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Transaction Summary</title>
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
            table {
			  font-family: arial, sans-serif;
			  border-collapse: collapse;
			  width: 100%;
			}
			
			td, th {
			  border: 1px solid #dddddd;
			  text-align: left;
			  padding: 8px;
			}
			
			tr:nth-child(even) {
			  background-color: #dddddd;
			}
        </style>
	</head>
	<body>
		<div class="wrapper">
            <form action="TransactionRegister" method="post">
                <h2>Here is your Transaction Summary !</h2>
                <h3>Alert Limit - £5.00 </h3>
                <table>
				  <tr>
				    <th>Transaction</th>
				    <th>Vendor</th>
				    <th>Purchase Amount</th>
				    <th>Contribution Amount</th>
				    <th>Action</th>
				  </tr>
				  <tr>
				    <td>1</td>
				    <td>Aldi</td>
				    <td>£20.00</td>
				    <td>£2.00</td>
				    <td>Default Contribution</td>
				  </tr>
				  <tr>
				    <td>2</td>
				    <td>Amazon</td>
				    <td>£100.00</td>
				    <td>£10.00</td>
				    <td>Authorise payment of £10.00 to retirement pot</td>
				  </tr>
				</table>
            </form>
		</div>
	</body>
</html>