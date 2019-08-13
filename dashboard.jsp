       
<!-- 
     Name: Rahulkumar Patel (1006860118) 
     File:dashboard.jsp
     Last Modified: 13 Augest 2019 
     CRN: 34785
     Description: This is a main page and display,
                 photos of login user in their album
                in table with the status.

 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" ng-app = "tut"> 
<head>
  <!--Created session id for a login user -->
  <% String id = (String)session.getAttribute("id");
                if (id == null)
                  { id = " ";
                   }%>
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
      
      <!-- style for table -->  
      <style type="text/css">
      table 
      {
        border-collapse: collapse;
        width: 100%;
      }

      th, td 
      {
        text-align: left;
        padding: 10px;
      }


      th {
        background-color: #808080;
        color: white;
           }
      </style>            
</head>
<body>    
    <div>
      <p>Welcome user your userID is,
      <h1 id= "h1"><%=id%>.</h1></p> 
 
      <!-- table1 to display user's data. -->  
      <p>Please click here to logout <a href="./logout.jsp">Logout</a></p>
      <table id="table1">
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Completed</th>
        <tbody id = "tb"></tbody>
        </tr>
      </thead>
    </table>

    <!-- table2 to display user's status. --> 
    <table id="table2">
      <thead>
        <tr>
          <th>Number of <br/>
          photos in album</th>
          <th>Number of <br/>
          Completed photos</th>
          <th>Number of <br/>
          Not completed</th>
        <tbody id = "tb1"></tbody>
        </tr>
      </thead>
    </table>
      <Script>
        //variable decleration.
        var a = document.getElementById("h1").innerText;  //to get userid.
        var count = 0;  //to count completed photos.
        var fal = 0;    //to count uncompleted photos.
        var pictures = [];  //Array to store perticular user's record.

        //$.get to get data from the server.
         $.get("https://jsonplaceholder.typicode.com/todos/",function(pic)
           {
           // console.log(pic);
           
           //for loop to get perticular user data from all data.
           for(var i = 0 ; i <pic.length; i++){
           var e = pic[i];
           var f = e["userId"];
           if(f == a){
           pictures.push(pic[i])}  //push data in Array from the array for one user.

          }

          // console.log(pictures);

          //function user to get userID.
          function user(pic){
            return pic.userId === 1;
            }

            //table1 to dispaly user abum data.
            var table = $('#table1'); 
            for(var j =0 ; j< pictures.length; j++)
            {
              var row ="<tr><td>" +pictures[j].id+"</td><td>"+pictures[j].title+"</td><td>"+ pictures[j].completed+"</td>"
               $("#tb").append(row);   
              
              //to count the completed photos.     
              if (pictures[j].completed == true) 
              {
               count++; 
              }     
            }

          //to count uncompleted photos.  
          fal = pictures.length - count;

          //table2 to display user's album status
          var table = $('#table2'); 
          var row ="<tr><td>" +pictures.length+"</td><td>"+count+"</td><td>"+fal+"</td>"
                     $("#tb1").append(row);
          console.log(count);
           })
      </Script>
    </div>
</body>
</html>