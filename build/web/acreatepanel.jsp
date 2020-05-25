<%-- 
    Document   : acreatepanel
    Created on : 14 May, 2020, 12:35:54 AM
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
     <%
          String msg=request.getParameter("msg");
          if(msg!=null){
     %>
        <script>alert("<%=msg%>");</script>
     <%}%>
    </head>
    <body>
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
            <a href="acreatepanel.jsp" style="color:black;background:white;">Create Panel</a>
            <a href="aallocateapplicants.jsp">Allocate Applicants</a>
            <a href="aviewresults.jsp">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    <h1 style="color:#990000;font-size:30px;"><b>Create Panel</b></h1>
    <center>
  <div style="box-shadow:5px 5px 5px 5px grey;width:80%;max-height:400px;overflow-y:auto;">     
    <table style="width:100%;">
        <tr>
            <th>Award Name</th>
            <th>Eligible Users</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Panel Status</th>
        </tr>     
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String sql="select * from awards";
   Statement st=conn.createStatement();
   ResultSet rs=st.executeQuery(sql);
   
   while(rs.next()){
       String sql1="select * from panel where award='"+rs.getString("award")+"' and utype='"+rs.getString("eligible")+"'";
       Statement st1=conn.createStatement();
       ResultSet rs1=st1.executeQuery(sql1);
       if(rs1.next())
       {
%>          
<tr>
    <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><%=rs.getString("deadline")%></td>
    <td><a href="#" style="color:#009900;text-decoration:none;">Panel Selected</a></td>
</tr>   
<%       }
       else
       {
%>         
<tr>
    <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><%=rs.getString("deadline")%></td>
    <td><a href="acreatepanel1.jsp?award=<%=rs.getString("award")%>&utype=<%=rs.getString("eligible")%>" style="color:#990000;">Create Panel</a></td>
</tr>   
<%       }
   }

%>
       </table>
       </div> 
    </center><br><br><br><br>
    </body>
</html>
