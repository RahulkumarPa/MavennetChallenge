<!-- 
     Name: Rahulkumar Patel (1006860118) 
     File:login.jsp
     Last Modified: 13 Augest 2019 
     CRN: 34785
     Description: This is a login page for user,
                  and it shows basic information.

 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<head>
</head>
<body>      
    <div>

    	<br/>
       <div>
       	  <form action = "./Login" method = "POST">
         <table border="0" cellpadding="10" style="margin-left:auto; margin-right:auto;background-color:#fafad2;">
			<tr>
				<td><strong>User ID</strong></td>
				<td><input id= "uLogin" type="text" name="login"  size="1" required="number" /></td>
			</tr>
			</table>
			<table border="0" cellspacing="15" style="margin-left:auto; margin-right:auto;" >
			<tr>
				<td><input type="submit" value = "Log In" /></td>
			</tr>
			</table>
		 </form>
     </div>
     <div>
     	<h2>Basic Information</h2>
     	<p>1. Ented userId between 1 to 10 if it's not in range it send you,<br/>
     	      on a dashboard page using java.</p>

     	<p>2. To see user's photo album you have to login by entering something<br/>
     	      if you enter nothing it's shows you dialogbox to enterdsomething <br/>
     	      for this I used HTMl5.</p>      

     	<p>3. if you enter string value in userID field it's give to network error,<br/>
     	      and occured numberformat exception that done in java.</p>       
     </div>
 </body>
 </html>

