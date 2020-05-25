<%-- 
    Document   : escorenominees
    Created on : 16 May, 2020, 5:49:51 PM
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

<center><h1 style="color:#990000;font-size:30px;background:#d2d007;width:25%;border-radius:30px;"><b>Score Nominees</b></h1></center><br>
<center>
    <div style="box-shadow:5px 5px 5px 5px grey;width:80%;">
    <table style="width:100%;">
        <tr>
            <th>Award Name</th>
            <th>Eligibility</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Shortlisting Status</th>
            <th>Score Board</th>
        </tr>
        
<%
  String name=session.getAttribute("user").toString();
  
  String sql="select * from panel where expert='"+name+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  while(rs.next())
  {
      String sql1="select * from awards where award='"+rs.getString("award")+"' and eligible='"+rs.getString("utype")+"'";
      Statement st1=conn.createStatement();
      ResultSet rs1=st1.executeQuery(sql1);
      
     if(rs.getString("stats").equals("finalise"))
     {
         if(rs1.next())
         {
%>    
<tr>
    <td><%=rs1.getString("award")%></td>
    <td><%=rs1.getString("eligible")%></td>
    <td><%=rs1.getString("description")%></td>
    <td style="width:10%;"><%=rs1.getString("deadline")%></td>
    <td style="color:#009900">Shortlisting Done!</td>
    <td><a href="escorenominees1.jsp?award=<%=rs1.getString("award")%>&utype=<%=rs1.getString("eligible")%>" style="color:#990000;">Score Board</a></td>
</tr>
<%         }
     }
     else if(rs.getString("stats").equals("nil"))
     {
         if(rs1.next())
         {
%> 
<tr>
    <td><%=rs1.getString("award")%></td>
    <td><%=rs1.getString("eligible")%></td>
    <td><%=rs1.getString("description")%></td>
    <td style="width:10%;"><%=rs1.getString("deadline")%></td>
    <td style="color:#e04413;">Not Done Yet!</td>
    <td><a href="#" style="text-decoration:none;color:#e04413">Finalize Shortlisting!</a></td>
</tr>
<%         }
     }
  }

%>
       </table>
      </div>
</center><br><br>

     <center>
       <div style="background:lightgoldenrodyellow;position:relative;padding:50px 30px;width:30%;height:420px;border-radius:15%;;">
           <h1 style="color:#990000;font-size:30px;"><b>NOTE:</b></h1>
           <p style="font-size:20px;"><b>1)</b>&nbsp;Finalize Shortlisting of the Nominees before Scoring!</p>
           <p style="font-size:20px;"><b>2)</b>&nbsp;Score the nominees(out of 100) by thoroughly looking into the achievements.</p>
           <p style="font-size:20px;"><b>3)</b>&nbsp;<b>Maintain Transparency</b></p>
       </div>
     </center><br><br><br>
    </body>
</html>
