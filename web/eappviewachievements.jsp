<%-- 
    Document   : eappviewachievements
    Created on : 15 May, 2020, 8:34:47 PM
    Author     : Sai Chaitanya
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
    <br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

    <center><h1 style="font-size:30px;color:#990000;padding:5px;background:#e2e220;width:20%;border-radius:30px;"><b>View Achievements</b></h1></center><br><br>

<%
  String name=request.getParameter("name");
  String utype=request.getParameter("utype");
  
  String sql1="select * from reg where username='"+name+"' and utype='"+utype+"'";
  Statement st1=conn.createStatement();
  ResultSet rs1=st1.executeQuery(sql1);
  if(rs1.next()){
%>  
<center>
    <div style="box-shadow:5px 5px 5px 5px grey;width:30%;">
    <table style="width:100%;">
        <tr>
            <td>Applicant Name</td><td>:</td><td><%=name%></td>
        </tr>
        <tr>
            <td>User Type</td><td>:</td><td><%=utype%></td>
        </tr>
        <tr>
            <td>Department</td><td>:</td><td><%=rs1.getString("dept")%></td>
        </tr>
        <%}%>
    </table>
    </div>     
</center><br><br>
<center>
    <div style="box-shadow:5px 5px 5px 5px grey;width:80%;">
    <table style="width:100%;">
        <tr>
            <th>Event Name</th>
            <th>Authority</th>
            <th>Area of Study</th>
            <th>Year</th>
            <th>Description</th>
            <th>Citation Link</th>
        </tr>
<%  String sql="select * from achievements where name='"+name+"' and utype='"+utype+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
  {
%> 
<tr>
    <td><%=rs.getString("event")%></td>
    <td><%=rs.getString("authority")%></td>
    <td><%=rs.getString("department")%></td>
    <td><%=rs.getString("year")%></td>
    <td><%=rs.getString("description")%></td>
    <td><a href="<%=rs.getString("proof")%>" style="color:#990000;text-decoration:none;">View Details</a></td>
</tr>    
<%  }
%>
        </div>
       </table>
</center><br><br>
       <center><a href="eviewapplicants.jsp" style="font-size:20px;border-radius:5px;padding:15px;text-decoration:none;border:none;background:#444;color:#fff;">Back</a></center>
  </body>
</html>
