<!-- 
     Name: Rahulkumar Patel (1006860118) 
     File:logout.jsp
     Last Modified: 13 Augest 2019 
     CRN: 34785
     Description: This is a logout page for user.

 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" ng-app = "tut"> 
<head>	
        <!-- Close the use's session and redirect to login page
        	and put to option for logou one is through java commented
        	and second is direct which is in use.
        <a href="./Logout">Logout</a>
         -->
   		<%
          session.invalidate();
           response.sendRedirect("login.jsp");
           %>
       </head>
       <body></body>
       </html>
        