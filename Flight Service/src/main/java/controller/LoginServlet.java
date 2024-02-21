package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class lognServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		response.setContentType("text/html");
		String userName = request.getParameter("t1");
		String pw = request.getParameter("t2");
		UserDao dao = new UserDao();
		
		PrintWriter writer = response.getWriter();
		
		User userObj = dao.getLogin(userName, pw);
		
		if (userObj != null) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("user-key", userObj);
			writer.println("<h3><font color='white'>"+" "+"Login Success"+" "+"</font></h3> ");
			RequestDispatcher rd = request.getRequestDispatcher("SearchFlight.jsp");
			rd.include(request, response);
			
		}
		else 
		{
			writer.println("<h3><font color='red'>"+" "+"Invalid User"+" "+"</font></h3> ");	
		}
		
	}

}
