<%-- 
    Document   : eviewapplicants
    Created on : 15 May, 2020, 2:23:57 PM
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
            <a href="eviewapplicants.jsp" style="color:black;background:white;">View Applicants</a>
            <a href="eshortlistnominees.jsp">Shortlist Nominees</a>
            <a href="escorenominees.jsp">Score Nominees</a>
            <a href="eviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    <center><h1 style="font-size:30px;color:#990000;background:#e2e220;width:50%;border-radius:30px;"><b>List of awards and Applicants allocated for you</b></h1></center><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String name=session.getAttribute("user").toString();
  
  String sql="select * from panel where expert='"+name+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  while(rs.next()){
      String sql1="select * from applicants where expertallot='"+name+"' and awardname='"+rs.getString("award")+"' and utype='"+rs.getString("utype")+"'";
      Statement st1=conn.createStatement();
      ResultSet rs1=st1.executeQuery(sql1);
      
      if(rs1.next())
      {
          String sql2="select * from applicants where expertallot='"+name+"' and awardname='"+rs.getString("award")+"' and utype='"+rs.getString("utype")+"'";
          Statement st2=conn.createStatement();
          ResultSet rs2=st2.executeQuery(sql2);
%> 
<center>
    <h1 style="color:green;font-size:25px;padding:8px;"><b style="color:#990000;font-size:25px;">Award Name&nbsp;:&nbsp;</b><b>"<%=rs.getString("award")%>"</b></h1>
 <div style="box-shadow:5px 5px 5px 5px grey;width:80%;max-height:400px;overflow-y:auto;">
   <table style="width:100%;">
    <tr>
        <th>Applicant Name</th>
        <th>User Type</th>
        <th>Justification</th>
        <th>View Achievements</th>
    </tr>
<%
   while(rs2.next())
   {
%>       
<tr>
    <td><%=rs2.getString("name")%></td>
    <td><%=rs2.getString("utype")%></td>
    <td style="width:40%;"><%=rs2.getString("description")%></td>
    <td><a href="eappviewachievements.jsp?name=<%=rs2.getString("name")%>&utype=<%=rs2.getString("utype")%>" style="color:#990000">View Achievements</a></td>
</tr>  
<%       
   }
%>   
    </div>
  </table>
</center><br>
<%      }
  }
%>

    </body>
</html>
