<%-- 
    Document   : acreateexpert
    Created on : 20 May, 2020, 11:10:28 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0;">
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
            <a href="adminhome.jsp">Home</a>
            <a href="acreateexpert.jsp"  style="color:black;background:white;">Create Expert</a>
            <a href="aviewachievements.jsp">View Achievements</a>
            <a href="aupdateannouncements.jsp">Update Announcements</a>
            <a href="acreatepanel.jsp">Create Panel</a>
            <a href="aallocateapplicants.jsp">Allocate Applicants</a>
            <a href="aviewresults.jsp">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center>
    <br><br><br>
    <div class="loginbox" style="height:400px;top:350px;">
            <img src="user.png" alt="Bad Attempt!" class="loginimg">
            <center><h1 style="font-weight:normal;font-size:32px;">Create Expert</h1></center>
            <form action="acreateexpertact.jsp" method="post">
                <p>Username</p>
                <input type="text" name="ename" placeholder="Enter Username" required="" autocomplete="off">
                <p>Password</p>
                <input type="password" name="passw" placeholder="Enter Password" required="" autocomplete="off">
                <center><input type="submit" value="CREATE"></center>
            </form>
    </div><br><br><br><br><br><br>
    </body>
</html>
