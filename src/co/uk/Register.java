package co.uk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
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
		System.out.println("In get Register.java");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In post Register.java");
		HttpSession session = request.getSession(true);

		session.setAttribute("userEmail", request.getParameter("email"));
		String firstName = request.getParameter("firstname");
		String surName = request.getParameter("surname");
		String email = request.getParameter("email");
		float contribution = Integer.parseInt(request.getParameter("contribution"));
		String accno = request.getParameter("accno");
		String sortcode = request.getParameter("sortcode");
		float alertAmount = Integer.parseInt(request.getParameter("alertAmount"));
		try {
			Connection con = new SQLDatabaseConnection().getConnection();
			String insertSql = "INSERT INTO [User] (Email, Firstname, Lastname, Contribution, Accountnumber, Sortcode, Alertamount) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = con.prepareStatement(insertSql);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, firstName);
			preparedStatement.setString(3, surName);
			preparedStatement.setFloat(4, contribution);
			preparedStatement.setString(5, accno);
			preparedStatement.setString(6, sortcode);
			preparedStatement.setFloat(7, alertAmount);
			
			 int row = preparedStatement.executeUpdate();

	            // rows affected
	            
	            if(row ==1) {
		            System.out.println("Rows inserted."); //1
		    		response.sendRedirect("/InsurancePOC/Home.jsp");

	            }
		} catch (Exception e) {
			e.printStackTrace();
		}


		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
