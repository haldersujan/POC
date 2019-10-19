package co.uk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Order Register
 */
@WebServlet("/OrderRegister")
public class OrderRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("In get OrderRegister.java");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In post OrderRegister.java");

		double total =  Double.valueOf(request.getParameter("total"));
		
		System.out.println("Total from form::"+total);
		
		HttpSession session = request.getSession(true);
		
		String email = (String)session.getAttribute("userEmail");
		System.out.println("User::"+ email);
		
		try {
			Connection con = new SQLDatabaseConnection().getConnection();
		    Statement stmt = con.createStatement();
			String selectUser = "select * from [User] where Email = '" + email + "'";
			ResultSet rs = stmt.executeQuery(selectUser);

		    // Iterate through the data in the result set and display it.
		    while (rs.next()) {
					String eMail = rs.getString("Email");
					
					double contribution = rs.getFloat("contribution");
					double alertAmount = rs.getFloat("alertAmount");
					System.out.println("Email::"+ eMail + " and contribution ::"+ contribution+ 
							" and alertAmount ::"+ alertAmount);
					
					if(contribution != 0) {
						
						session.setAttribute("contribution", contribution);
						session.setAttribute("alertAmount", alertAmount);
						response.sendRedirect("/InsurancePOC/Thanks.jsp");
					}
		            }
		} catch (Exception e) {
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
