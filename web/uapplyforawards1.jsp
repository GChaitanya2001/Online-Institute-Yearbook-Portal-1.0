<%-- 
    Document   : uapplyforawards1
    Created on : 13 May, 2020, 3:07:30 PM
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
        <link rel="stylesheet" href="table.css">
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
            <a href="userhome.jsp">Home</a>
            <a href="uviewachievements.jsp">View Achievements</a>
            <a href="uaddachievements.jsp">Add Achievements</a>
            <a href="uapplyforawards.jsp" style="color:black;background:white;">Apply for Awards</a>
            <a href="uviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String name=session.getAttribute("user").toString();
   String utype=session.getAttribute("utype").toString();
   String award=request.getParameter("award");
%>

    <div class="loginbox" style="top:400px;height:620px;box-shadow:5px 5px grey;border:1px solid #000">
        <img src="achieve.png" alt="Bad Attempt!" class="loginimg">
         <h1 style="color:#990000;font-size:25px;"><b>Application Form</b></h1>
         <h1 style="color:#009900;"><b>"<%=award%>"</b></h1>
         <form action="uapplyforawardsact.jsp?award=<%=award%>&utype=<%=utype%>" method="post">
             <p>Name:</p>
             <input type="text" name="name" value=<%=name%> readonly>
             <p>Justification:</p>
             <textarea name="desc" rows="6" cols="30" style="background:transparent;border:1px solid #000;width:90%" required=""></textarea><br><br>
             <center><input type="submit" value="APPLY"></center>
             <p style="font-weight:normal;"><b>Note:</b>Justify in the above text area,about how do you think you are eligible for this award.</p>
         </form>
    </div>
    </body>
</html>
