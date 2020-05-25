<%-- 
    Document   : escorenominees1
    Created on : 16 May, 2020, 6:37:07 PM
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
            <a href="eshortlistnominees.jsp">Shortlist Nominees</a>
            <a href="escorenominees.jsp" style="color:black;background:white;">Score Nominees</a>
            <a href="eviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<center><h1 style="color:#990000;font-size:30px;background:#d2d007;width:20%;border-radius:30px;padding:5px;"><b>Score Nominees</b></h1></center><br>

<%
  String expert=session.getAttribute("user").toString(); 
    
  String award=request.getParameter("award");
  String utype=request.getParameter("utype"); 
%>
<center>
    <div style="box-shadow:5px 5px 5px 5px grey;width:40%;">
        <table style="width:100%;">
            <tr>
                <td>Award Name</td><td>:</td><td><%=award%></td>
            </tr>
            <tr>
                <td>User Type</td><td>:</td><td><%=utype%></td>
            </tr>
        </table>
    </div> 
</center><br><br>
<center>
<div style="box-shadow:5px 5px 5px 5px grey;width:80%;">
    <table style="width:100%;">
        <tr>
            <th>Applicant Name</th>
            <th>Description</th>
            <th>View Achievements</th>
            <th>Score</th>
            <th>Score Now</th>
        </tr>
        
<%
   String sql="select * from applicants where awardname='"+award+"' and utype='"+utype+"' and expertallot='"+expert+"' and status='nominate'";
   Statement st=conn.createStatement();
   ResultSet rs=st.executeQuery(sql);
   
   while(rs.next())
   {
       if(rs.getString("score").equals("-1"))
       {
%>  
<tr>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("description")%></td>
    <td><a href="escoreviewachieve.jsp?name=<%=rs.getString("name")%>&utype=<%=rs.getString("utype")%>&award=<%=rs.getString("awardname")%>" style="color:#990000;">View Achievements</a></td>
    <td>Not Scored</td>
    <td><a href="escorenominees2.jsp?award=<%=rs.getString("awardname")%>&utype=<%=rs.getString("utype")%>&name=<%=rs.getString("name")%>" style="background:green;color:#fff;padding:10px;text-decoration:none;">Score</a></td>
</tr>
<%       }
       else
       {
%>
<tr>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("description")%></td>
    <td><a href="#" style="color:#990000;">View Achievements</a></td>
    <td><%=rs.getString("score")%></td>
    <td><a href="#" style="color:#009900;text-decoration:none;">Scoring Done!</a></td>
</tr>
<%       }
   }
%>        
        
    </table>
</div>
</center><br><br><br>
<center><a href="escorenominees.jsp" style="font-size:20px;border-radius:10px;padding:15px;text-decoration:none;background:#444;color:#fff;">Back</a></center><br><br><br><br>
    </body>
</html>
