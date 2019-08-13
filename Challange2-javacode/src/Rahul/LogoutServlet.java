package Rahul;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
* LogoutServlet A Servlet that provide connection to the jsp file
* for a logout.
* @author Rahulkumar Patel
* @version 1.0 (13/08/2019)
*/
public class LogoutServlet extends HttpServlet{ 
	public void doPost(HttpServletRequest request,
            HttpServletResponse response) 
	throws ServletException, IOException{
		
		/**
      	 * create a session and by default set it true
      	 */
		HttpSession session = request.getSession(true);
		
		session.invalidate();  //close all session.
		response.sendRedirect("./login.jsp"); // redirect to login page.
	}

}
