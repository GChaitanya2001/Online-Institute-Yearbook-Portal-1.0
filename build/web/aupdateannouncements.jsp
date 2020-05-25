<%-- 
    Document   : aupdateannouncements
    Created on : 13 May, 2020, 8:35:58 AM
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
        <%
          if(request.getParameter("msg")!=null){
        %>
        <script>alert(<%=request.getParameter("msg")%>);</script>
        <%}%>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br>
    <center>
        <nav>
            <a href="adminhome.jsp">Home</a>
             <a href="acreateexpert.jsp">Create Expert</a>
            <a href="aviewachievements.jsp">View Achievements</a>
            <a href="aupdateannouncements.jsp" style="color:black;background:white;">Update Announcements</a>
            <a href="acreatepanel.jsp">Create Panel</a>
            <a href="aallocateapplicants.jsp">Allocate Applicants</a>
            <a href="aviewresults.jsp">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    <div class="loginbox" style="height:620px;top:400px;">
         <img src="achieve.png" alt="Bad Attempt!" class="loginimg">
         <h1 style="color:#990000;"><b>Update Announcements</b></h1>
         <form action="aupdateannouncementsact.jsp" method="post">
             <p>Award Name:</p>
             <input type="text" name="award" placeholder="Enter Award Name" required="" autocomplete="off">
             <p>Eligible Users:</p>
             <select name="elig" required="">
                 <option value="">--Select Users--</option>
                 <option value="student">Student</option>
                 <option value="teacher">Teacher</option>
             </select><br><br>
             <p>Description:</p>
             <textarea rows="6" cols="30" name="desc" required="" style="background:transparent;border:1px solid #000;width:90%"></textarea>
             <p>Enter Deadline:</p>
             <input type="date" name="deadline" placeholder="Enter Deadline" style="border:1px solid #000;" required="" autocomplete="off"><br>
             <center><input type="submit" value="UPDATE"></center>
         </form>
    </div>
    </body>
</html>
