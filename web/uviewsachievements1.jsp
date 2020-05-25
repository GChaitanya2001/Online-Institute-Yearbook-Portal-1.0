<%-- 
    Document   : uviewsachievements1
    Created on : 12 May, 2020, 12:35:28 PM
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
   String year=request.getParameter("year");
   String dept=request.getParameter("dept");
   
   String sql="select * from achievements where year='"+year+"' and department='"+dept+"' and utype='student'";
   Statement st=conn.createStatement();
   ResultSet rs=st.executeQuery(sql);
%>

 <h1 style="color:#990000;font-size:30px;"><b>Student Achievements</b></h1>
    <center>
         <div style="box-shadow:5px 5px 5px 5px grey;width:30%;">
        <table style="width:100%;">
            <tr>
                <td style="background:#f2f2f2;">Year</td><td style="background:#f2f2f2;">:</td><td style="background:#f2f2f2;"><%=year%></td>
            </tr>
            <tr>
                <td style="background:#f2f2f2;">Department</td><td style="background:#f2f2f2;">:</td><td style="text-transform:uppercase;background:#f2f2f2;"><%=dept%></td>
            </tr>
        </table>
         </div>
    </center><br><br>
 
    <center>
      <div style="box-shadow:5px 5px 5px 5px grey;width:80%;">
        <table style="width:100%;">
            <tr>
                <th>Student Name</th>
                <th>Designation</th>
                <th>Event</th>
                <th>Authority</th>
                <th>Description</th>
                <th>Citation Link</th>
            </tr>
      <%
           while(rs.next()){
            String sql1="select * from reg where username='"+rs.getString("name")+"'";
            Statement st1=conn.createStatement();
            ResultSet rs1=st1.executeQuery(sql1);  
      %>
      <tr>
          <td><%=rs.getString("name")%></td>
          <%
              if(rs1.next()){
          %>
          <td><%=rs1.getString("designation")%></td>
          <%}%>
          <td><%=rs.getString("event")%></td>
          <td><%=rs.getString("authority")%></td>
          <td><%=rs.getString("description")%></td>
          <td><a href="<%=rs.getString("proof")%>" style="color:#990000;text-decoration:none;">View Details</a></td>
      </tr>
      <%}%>
         </table>
      </div><br><br>
  <a href="uviewsachievements.jsp" style="border-radius:10%;padding:15px;font-size:18px;border:none;text-decoration:none;background:#333333;color:white;">Back</a>
    </center><br><br><br><br>
    </body>
</html>
