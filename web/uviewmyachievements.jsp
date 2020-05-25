<%-- 
    Document   : uviewmyachievements
    Created on : 24 May, 2020, 7:16:25 PM
    Author     : Sai Chaitanya
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
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br><br><br>
  
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String name=session.getAttribute("user").toString();
  String utype=session.getAttribute("utype").toString();
  
  String sql="select * from achievements where name='"+name+"' and utype='"+utype+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
   
%>

    <center><h1 style="font-size:30px;color:#990000;width:20%;background:#e2e220;border-radius:30px;"><b>My Achievements</b></h1></center><br><br>
    <center>
    <div style="max-height:400px;overflow-y:auto;width:80%;box-shadow:5px 5px 5px 5px grey;">
        <table style="width:100%;">
            <tr>
                <th>Year of Achievement</th>
                <th>Event Name</th>
                <th>Authority</th>
                <th>Area of Study</th>
                <th>Description</th>
                <th>Citation Link</th>
            </tr>
   <%
      while(rs.next())
      {
   %>  
   <tr>
       <td><%=rs.getString("year")%></td>
       <td><%=rs.getString("event")%></td>
       <td><%=rs.getString("authority")%></td>
       <td><%=rs.getString("department")%></td>
       <td><%=rs.getString("description")%></td>
       <td><a href="<%=rs.getString("proof")%>" style="color:#990000;">View Details</a></td>
   </tr>
   <% 
       }
   %>         
        </table>
    </div><br><br><br>
    <a href="uviewachievements.jsp" style="background:black;color:#fff;padding:15px;font-size:25px;border-radius:10%;text-decoration:none;">Back</a>
    </center> 
    </body>
</html>
