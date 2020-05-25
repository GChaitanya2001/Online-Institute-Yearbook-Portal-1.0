<%-- 
    Document   : eshortlistnominees
    Created on : 15 May, 2020, 11:29:29 PM
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

<center><h1 style="color:#990000;font-size:30px;background:#d2d007;width:25%;border-radius:30px;"><b>Shortlist Nominees</b></h1></center><br>
<center>
    <div style="box-shadow:5px 5px 5px 5px grey;width:80%;">
    <table style="width:100%;">
        <tr>
            <th>Award Name</th>
            <th>Eligibility</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Shortlist Nominees</th>
        </tr>
<%
  String name=session.getAttribute("user").toString();
  
  String sql="select * from panel where expert='"+name+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  while(rs.next())
  {
      String sql1="select * from applicants where expertallot='"+name+"' and awardname='"+rs.getString("award")+"' and utype='"+rs.getString("utype")+"'";
      Statement st1=conn.createStatement();
      ResultSet rs1=st1.executeQuery(sql1);
      if(rs1.next())
      {
        String sql2="select * from awards where award='"+rs.getString("award")+"' and eligible='"+rs.getString("utype")+"'";
        Statement st2=conn.createStatement();
        ResultSet rs2=st2.executeQuery(sql2);
        if(rs2.next())
        {
        if(rs.getString("stats").equals("finalise"))
        {
%>          
<tr>
    <td><%=rs2.getString("award")%></td>
    <td><%=rs2.getString("eligible")%></td>
    <td><%=rs2.getString("description")%></td>
    <td><%=rs2.getString("deadline")%></td>
    <td><a href="#" style="text-decoration:none;color:#009933;">Shortlisting Done!</a></td>
</tr>    
<%      }
        else if(rs.getString("stats").equals("nil"))
        {
%>        
<tr>
    <td><%=rs2.getString("award")%></td>
    <td><%=rs2.getString("eligible")%></td>
    <td><%=rs2.getString("description")%></td>
    <td><%=rs2.getString("deadline")%></td>
    <td><a href="eshortlistnominees1.jsp?award=<%=rs2.getString("award")%>&utype=<%=rs2.getString("eligible")%>" style="color:#990000;">Shortlist Nominees</a></td>
</tr>    
<%        }
      }
    }
   else
    {
        String sql3="select * from awards where award='"+rs.getString("award")+"'";
        Statement st3=conn.createStatement();
        ResultSet rs3=st3.executeQuery(sql3);
       if(rs3.next())
       {
%>  
<tr>
    <td><%=rs3.getString("award")%></td>
    <td><%=rs3.getString("eligible")%></td>
    <td><%=rs3.getString("description")%></td>
    <td><%=rs3.getString("deadline")%></td>
    <td><a href="#">No Applicants!</a></td>
</tr>
<%    } 
    }
  }
 
%>
       </table>
       </div>
      </center>
    </body>
</html>
