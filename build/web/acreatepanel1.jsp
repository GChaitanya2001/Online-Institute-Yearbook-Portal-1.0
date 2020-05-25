<%-- 
    Document   : acreatepanel1
    Created on : 14 May, 2020, 1:18:22 AM
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
            <a href="adminhome.jsp">Home</a>
             <a href="acreateexpert.jsp">Create Expert</a>
            <a href="aviewachievements.jsp">View Achievements</a>
            <a href="aupdateannouncements.jsp">Update Announcements</a>
            <a href="acreatepanel.jsp" style="color:black;background:white;">Create Panel</a>
            <a href="aallocateapplicants.jsp">Allocate Applicants</a>
            <a href="aviewresults.jsp">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String award=request.getParameter("award");
   String utype=request.getParameter("utype");
   
  String sql="select * from login where utype='expert'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
%>

    <div class="loginbox" style="box-shadow:5px 5px grey;border:1px solid #888;top:400px;height:580px;">
        <img src="achieve.png" alt="Bad Attempt!" class="loginimg">
        <h1 style="color:#990000;font-size:25px;"><b>Select Panel</b></h1>
        <center><p style="color:green;"><b>"<%=award%>"</b></p></center><br>
        <form action="acreatepanelact.jsp?award=<%=award%>&utype=<%=utype%>" method="post">
            <p>Number of panel members:</p>
            <input type="number" name="expertnum" required="" autocomplete="off">
            <p>Select Panel Members:</p><br>
            <select name="panel" size="4" required="" multiple style="border:1px solid #000;height:80px;">
                <option value="">--Select Panel--</option>
<%
                 while(rs.next()){
%>
                <option value=<%=rs.getString("username")%>><%=rs.getString("username")%></option>
<%}%>
            </select><br><br>
            <center><input type="submit" value="CREATE"></center>
        </form>
        <p style="font-weight:normal;"><b>Note:</b>The number in the field must match with the number of experts selected form the drop down.</p>
    </div>
    </body>
</html>
