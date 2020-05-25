<%-- 
    Document   : eshortlistnominees1
    Created on : 16 May, 2020, 12:49:25 AM
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
            <a href="experthome.jsp">Home</a>
            <a href="eviewapplicants.jsp">View Applicants</a>
            <a href="eshortlistnominees.jsp" style="color:black;background:white;">Shortlist Nominees</a>
            <a href="escorenominees.jsp">Score Nominees</a>
            <a href="eviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>
        
<%
  String name=session.getAttribute("user").toString();
  
  String award=request.getParameter("award");
  String utype=request.getParameter("utype");
%>
<center>
    <h1 style="color:#990000;font-size:30px;background:#d2d007;width:25%;border-radius:30px;"><b>Shortlist Nominees</b></h1><br>
    <div style="box-shadow:5px 5px 5px 5px grey;width:30%;">
    <table style="width:100%;">
        <tr>
            <td>Award Name</td><td>:</td><td><%=award%></td>
        </tr>
        <tr>
            <td>User Type</td><td>:</td><td><%=utype%></td>
        </tr>
    </table>
    </div><br><br>
    
    <div style="box-shadow:5px 5px 5px 5px grey;width:80%;">
    <table style="width:100%;">
        <tr>
            <th>Applicant Name</th>
            <th>Description</th>
            <th>View Achievements</th>
            <th>Nomination Status</th>
        </tr>
<% 
  String sql="select * from applicants where awardname='"+award+"' and utype='"+utype+"' and expertallot='"+name+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  while(rs.next())
  {
      if(rs.getString("status").equals("nil"))
      {
%>
<tr>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("description")%></td>
    <td><a href="eshortviewachieve.jsp?name=<%=rs.getString("name")%>&utype=<%=rs.getString("utype")%>&award=<%=rs.getString("awardname")%>" style="color:#990000;">View Achievements</a></td>
    <td><a href="enominate.jsp?name=<%=rs.getString("name")%>&utype=<%=rs.getString("utype")%>&award=<%=rs.getString("awardname")%>&expert=<%=rs.getString("expertallot")%>" style="background:#009900;padding:12px;font-size:20px;text-decoration:none;color:#fff;">Nominate</a></td>
</tr>
<%
     }
    else if(rs.getString("status").equals("nominate"))
    {
%>
<tr>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("description")%></td>
    <td><a href="eshortviewachieve.jsp?name=<%=rs.getString("name")%>&utype=<%=rs.getString("utype")%>&award=<%=rs.getString("awardname")%>" style="color:#990000;">View Achievements</a></td>
    <td><a href="#" style="font-size:20px;text-decoration:none;color:#009900;">Nominated!</a></td>
</tr>   
<%  }
}
%>
           </table>
    </div>
</center><br><br>
<center><a href="efinalisenominee.jsp?award=<%=award%>&utype=<%=utype%>&expert=<%=name%>" style="text-decoration:none;background:#444;color:#fff;padding:15px;font-size:20px;">Finalize</a></center><br> 
    </body>
</html>
