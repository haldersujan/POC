<%@ page import="co.uk.SQLDatabaseConnection,java.sql.*"%>
<html lang="en">
<head>

</head>
<body>

	Welcome
	<%= session.getAttribute("userEmail")%>
	

	<%
try{

	Connection con = new SQLDatabaseConnection().getConnection();
    Statement stmt = con.createStatement();
	String selectUser = "select Count(*) cnt from [User]";
	ResultSet rs = stmt.executeQuery(selectUser);

    // Iterate through the data in the result set and display it.
    while (rs.next()) {
			Integer cnt = Integer.parseInt(rs.getString("cnt"));
			if(cnt == 0){
		        System.out.println("User is not present "+cnt);
    			response.sendRedirect("/InsurancePOC/Registration.jsp");
			} else {
		        System.out.println("User is  present "+cnt);
    			response.sendRedirect("/InsurancePOC/Home.jsp");
             }
            }

	}catch(Exception e) {
			e.printStackTrace();
	}
%>

</body>
</html>