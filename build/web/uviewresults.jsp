<%-- 
    Document   : uviewresults
    Created on : 17 May, 2020, 12:05:46 AM
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
            <a href="uapplyforawards.jsp">Apply for Awards</a>
            <a href="uviewresults.jsp" style="color:black;background:white;">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    
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
  String name=session.getAttribute("user").toString();
  String utype=session.getAttribute("utype").toString();
  
  String sql="select * from applicants where name='"+name+"' and utype='"+utype+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);  

  while(rs.next())
  {
%>
<tr>
    <td><%=rs.getString("awardname")%></td>
    <td><%=rs.getString("utype")%></td>
    <td><a href="uviewresults1.jsp?award=<%=rs.getString("awardname")%>&utype=<%=rs.getString("utype")%>" style="color:#990000">View Results</a></td>
</tr>
<%}%>
    </table>
      </div>
     </center>
    <div class="loginbox" style="top:880px;height:400px;">
        <img src="notice.png" alt="Bad Attempt!" width="100" height="100" class="loginimg" style="border-radius:0">
        <h1 style="font-size:30px;color:#990000;"><b>NOTE:</b></h1>
        <p style="font-weight:normal;"><b>1)For Round 1</b>,Results will be declared only after all the experts alloted for that award finalize the nominees</p><br>
        <p style="font-weight:normal;"><b>1)For Round 2</b>,Results will be declared only after all the nominated condidates are scored!</p>
    </div>
    
   </body>
</html>
