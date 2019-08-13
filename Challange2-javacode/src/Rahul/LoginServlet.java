package Rahul;
import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * LoginServlet class which extends HttpServlet to set the seesion
 * and we used it to logine user in the system 
 * @author Rahulkumar Patel
 * @version 1.0 (213/08/2019)
 */

public class LoginServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request,
            HttpServletResponse response) 
	throws ServletException, IOException
	{
		/**
      	 * create a session and by default set it true
      	 */
        HttpSession session = request.getSession(true);
        
        /**
      	 * variable id for this class which take id from the jsp page
      	 */
		String id =new String();
		
		try{
		id = request.getParameter( "login" );  //get id from the form.
		int userid =Integer.parseInt(id);      // convert into Integer
		
		//validation for userId
		if(userid > 0 && userid <=10 ){
			
			session.setAttribute("id", id);             //if userID valid create a session.
			response.sendRedirect("./dashboard.jsp");   //redirect to dashboard page.
		}
		else{
			response.sendRedirect("./notvalid.jsp");   //if userId is not valid redirect to notvalid page.
		} 
		}catch (Exception e) //not connected
        {
            System.out.println(e);
            String line1="<h2>A network error has occurred!</h2>";
            String line2="<p>Please notify your system " +
                                                    "administrator and check log. "+e.toString()+"</p>";
            formatErrorPage(line1, line2,response);
        }
		
	}
	  /**
     * formatErrorPage use to display the formate error.
     * @param first
     * @param second
     * @param response
     * @throws IOException
     */
	public void formatErrorPage( String first, String second,
            HttpServletResponse response) throws IOException
    {
        PrintWriter output = response.getWriter();
        response.setContentType( "text/html" );
        output.println(first);
        output.println(second);
        output.close();
    }
	
}

