<%-- 
    Document   : uviewachievements
    Created on : 12 May, 2020, 1:05:32 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0;">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sans-serif">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="stylecss.css">
    </head>
    <body>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br>
    <center>
        <nav>
            <a href="userhome.jsp">Home</a>
            <a href="uviewachievements.jsp" style="color:black;background:white;">View Achievements</a>
            <a href="uaddachievements.jsp">Add Achievements</a>
            <a href="uapplyforawards.jsp">Apply for Awards</a>
            <a href="uviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    <center>
    <div style="width:80%;">
        <div style="width:50%;float:left;">   
      <div style="background:url(bordercirc.png);width:440px;height:500px;">
          <br><br><br><br><br><br><br><br>
          &nbsp;&nbsp;&nbsp;<a href="uviewsachievements.jsp" style="background:lightgoldenrodyellow;font-size:20px;padding:15px;text-decoration:none;">Student Achievements</a><br><br><br><br>
         &nbsp;&nbsp;&nbsp;<a href="uviewtachievements.jsp" style="background:lightgoldenrodyellow;font-size:20px;padding:15px;text-decoration:none;">Teacher Achievements</a>
      </div>
        </div>
        <div style="float:right;width:50%;">
     <div style="background:url(bordercirc.png);width:440px;height:500px;">
         <br><br><br><br><br><br><br><br><br><br>
          &nbsp;&nbsp;&nbsp;<a href="uviewmyachievements.jsp" style="background:lightgoldenrodyellow;font-size:20px;padding:15px;text-decoration:none;">My Achievements</a><br><br>
      </div>
        </div>     
    </div> 
    </center>     
   </body>
</html>
