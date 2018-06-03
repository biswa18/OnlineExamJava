
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
 * Servlet implementation class AddQues
 */
@WebServlet("/AddQues")
public class AddQues extends HttpServlet {
	/**
		 * 
		 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String ques = request.getParameter("ques");
		String lang = request.getParameter("lang");
		String opt1 = request.getParameter("opt1");
		String opt2 = request.getParameter("opt2");
		String opt3 = request.getParameter("opt3");
		String opt4 = request.getParameter("opt4");
		String ans = request.getParameter("opt");
		String selected_ans = (ans.equals("1") ? "1" : ans.equals("2") ? "2" : ans.equals("3") ? "3" : "4");

		/*
		 * int i; for(i=0;i<ans.length;i++) { answr=ans[i]; }
		 */
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "nivt", "1234");
			PreparedStatement ps = con.prepareStatement(
					"insert into addques(qid,ques,opt1,opt2,opt3,opt4,correctopt,lang) values(add_ques.NEXTVAL,?,?,?,?,?,?,?)");

			ps.setString(1, ques);
			ps.setString(2, opt1);
			ps.setString(3, opt2);
			ps.setString(4, opt3);
			ps.setString(5, opt4);
			ps.setString(6, selected_ans);
			ps.setString(7, lang);
			int j = ps.executeUpdate();
			if (j > 0) {
				out.println(
						"<script language='javascript'>alert('Question added successfully!'); window.location.href='welcome.jsp'</script>");

			}
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}
}