import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUp() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String nm = request.getParameter("name");
		String mail = request.getParameter("email");
		String p = request.getParameter("pass");
		String cont = request.getParameter("mobile");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "nivt", "1234");

			PreparedStatement ps = con.prepareStatement("insert into regform values(?,?,?,?)");

			ps.setString(1, nm);
			ps.setString(2, mail);
			ps.setString(3, p);
			ps.setString(4, cont);

			int i = ps.executeUpdate();
			if (i > 0) {
				out.println(
						"<script language='javascript'>alert('Account successfully created! Login to continue!'); window.location.href='StudentLogin.jsp'</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}
}
