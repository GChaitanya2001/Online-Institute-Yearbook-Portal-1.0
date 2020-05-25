<%-- 
    Document   : aviewresults
    Created on : 18 May, 2020, 1:29:26 AM
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
            <a href="aupdateannouncements.jsp">Update Announcements</a>
            <a href="acreatepanel.jsp">Create Panel</a>
            <a href="aallocateapplicants.jsp">Allocate Applicants</a>
            <a href="aviewresults.jsp" style="color:black;background:white;">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center>
    <br><br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<center><h1 style="font-size:30px;color:#990000;padding:5px;background:#d2d007;width:20%;border-radius:30px;"><b>View Results</b></h1></center>
<br><br>
<center>
<div style="box-shadow:5px 5px 5px 5px grey;width:80%;max-height:320px;overflow-y:auto;">
<table style="width:100%;">
<tr>
    <th>Award Name</th>
    <th>Eligibility</th>
    <th>Results</th>
</tr>

<%
  String sql="select * from awards";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  while(rs.next())
  {
%>    
<tr>
    <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><a href="aviewresults1.jsp?award=<%=rs.getString("award")%>&utype=<%=rs.getString("eligible")%>" style="color:#990000">View Results</a></td>
</tr>
<%
    }
%>
</table>
</div>
</center>
<div class="loginbox" style="top:880px;height:400px;">
        <img src="notice.png" alt="Bad Attempt!" width="100" height="100" class="loginimg" style="border-radius:0">
        <h1 style="font-size:30px;color:#990000;"><b>NOTE:</b></h1>
        <p style="font-weight:normal;"><b>1)For Round 1</b>,Results will be declared only after all the experts alloted for that award finalize the nominees</p><br>
        <p style="font-weight:normal;"><b>1)For Round 2</b>,Results will be declared only after all the nominated condidates are scored!</p>
    </div><br><br>
    </body>
</html>
