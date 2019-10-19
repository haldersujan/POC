package co.uk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
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
 * Servlet implementation class Payment Register
 */
@WebServlet("/TransactionRegister")
public class TransactionRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TransactionRegister() {
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
		System.out.println("In get TransactionRegister.java");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In post TransactionRegister.java");

		
		HttpSession session = request.getSession(true);
		
//		double totalPurchase = (Double)session.getAttribute("totalPurchase");
//		Total Purchase value goes through to the bank for transaction.
		
		double contribution = (Double)session.getAttribute("totalRetirementContribution");
		String email = (String) session.getAttribute("userEmail");

		try {
			
			// To add this table to cloud
			Connection con = new SQLDatabaseConnection().getConnection();
			String insertSql = "INSERT INTO [Transaction] (Email, TransactionDate, Contribution) VALUES (?,?,?)";
			PreparedStatement preparedStatement = con.prepareStatement(insertSql);
			preparedStatement.setString(1, email);
			preparedStatement.setDate(2, new Date(new java.util.Date().getTime()));
			preparedStatement.setDouble(3,contribution);
			
			 int row = preparedStatement.executeUpdate();

	            // rows affected
	            
	            if(row ==1) {
		            System.out.println("Rows inserted."); //1
		    		response.sendRedirect("/InsurancePOC/Thanks.jsp");

	            }
		} catch (Exception e) {
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
