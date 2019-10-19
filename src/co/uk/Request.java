package co.uk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import co.uk.SQLDatabaseConnection;


/**
 * Servlet implementation class Request
 */
@WebServlet("/Request")
public class Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		System.out.println("In ServletDoPost");
		System.out.println("Name"+request.getParameter("name"));
		System.out.println("Id"+request.getParameter("id"));
		

		HttpSession session = request.getSession(true);
		session.setAttribute("userEmail", request.getParameter("email"));
		session.setAttribute("Name", request.getParameter("name"));
		session.setAttribute("Id", request.getParameter("id"));

		/*Connection con = new SQLDatabaseConnection().getConnection();
		Statement statement = con.createStatement();
		
		if(con != null) {
			System.out.println("Connection established !");
		}

		String selectUser = "select Count(*) cnt from [User]";
		ResultSet rs = statement.executeQuery(selectUser);

	    // Iterate through the data in the result set and display it.
	    while (rs.next()) {
				Integer cnt = Integer.parseInt(rs.getString("cnt"));
				if(cnt == 0){
		    	    System.out.println("User is not present"+cnt);
		    		response.sendRedirect("/InsurancePOC/Registration.html");
				} else {
				}
			}*/
		//response.sendRedirect("/InsurancePOC/Landing.jsp");

		doGet(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
