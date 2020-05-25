<%-- 
    Document   : userhome
    Created on : 11 May, 2020, 3:51:55 PM
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
     <%
          String msg=request.getParameter("msg");
          if(msg!=null){
     %>
        <script>alert("<%=msg%>");</script>
     <%}%>
    </head>
    <body>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br>
    <center>
        <nav>
            <a href="userhome.jsp" style="color:black;background:white;">Home</a>
            <a href="uviewachievements.jsp">View Achievements</a>
            <a href="uaddachievements.jsp">Add Achievements</a>
            <a href="uapplyforawards.jsp">Apply for Awards</a>
            <a href="uviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br><br>
    <center>
        <div style="height:500px;width:400px;box-shadow:5px 5px 5px 5px grey">
          <img src="welcome.png" alt="Bad Attempt!" height="350" width="350">
          <h1 style="font-size:80px;color:#990000;display:inline;"><%=session.getAttribute("user")%></h1>
        </div><br><br>  
        <a href="changepassword.jsp" style="color:#fff;font-size:20px;padding:15px;background:#444;text-decoration:none;">Want to Change Password?</a>
    </center><br><br><br><br>
    </body>
</html>
