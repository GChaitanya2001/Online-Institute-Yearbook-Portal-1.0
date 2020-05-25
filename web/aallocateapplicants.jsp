<%-- 
    Document   : aallocateapplicants
    Created on : 14 May, 2020, 12:05:13 PM
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
            <a href="acreatepanel.jsp">Create Panel</a>
            <a href="aallocateapplicants.jsp" style="color:black;background:white;">Allocate Applicants</a>
            <a href="aviewresults.jsp">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    <h1 style="color:#990000;font-size:30px;"><b>Allocate  Applicants</b></h1>
    <center>
  <div style="box-shadow:5px 5px 5px 5px grey;width:80%;max-height:500px;overflow-y:auto;">      
    <table style="width:100%">
        <tr>
            <th>Award Name</th>
            <th>Eligible Users</th>
            <th>Description</th>
            <th>Panel Status</th>
            <th>Deadline</th>
            <th>Allocation Status</th>
        </tr>
        
<%@page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  Date td=new Date();
  SimpleDateFormat forma=new SimpleDateFormat("yyyy-MM-dd");
  String td1=forma.format(td);
  
  String sql="select * from awards";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  while(rs.next())
  {
    String deadline=rs.getString("deadline");
    Date dd=forma.parse(deadline);
    Date pd=forma.parse(td1);
    
      String sql1="select * from panel where award='"+rs.getString("award")+"' and utype='"+rs.getString("eligible")+"'";
      Statement st1=conn.createStatement();
      ResultSet rs1=st1.executeQuery(sql1);
      if(rs1.next())
      {
          String sql2="select * from applicants where awardname='"+rs.getString("award")+"' and utype='"+rs.getString("eligible")+"' and expertallot='not alloted'";
          Statement st2=conn.createStatement();
          ResultSet rs2=st2.executeQuery(sql2);
          if(rs2.next())
          {
              if(pd.after(dd) || pd.equals(dd))
              {             
%>           
<tr>
    <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><p style="color:#009900;font-size:18px;">Panel Created</p></td>
    <td><%=dd.toString()%></td>
    <td><a href="aallocateapplicants1.jsp?award=<%=rs.getString("award")%>&utype=<%=rs.getString("eligible")%>&expertnum=<%=rs.getString("expertnum")%>" style="color:#990000;">Allocate Now!</a></td>
</tr>
<%            }
             else if(pd.before(dd))
              {
%>
<tr>
   <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><p style="color:#009900;font-size:18px;">Panel Created</p></td>
    <td><%=dd.toString()%></td>
    <td><a href="#" style="color:#d2d007;text-decoration:none;">Deadline is Due!</a></td>
</tr>
<%
              }
          }
          else
          {
%>
<tr>
    <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><p style="color:#009900;font-size:18px;">Panel Created</p></td>
    <td><%=dd.toString()%></td>
    <td><a href="#" style="color:#009900;text-decoration:none;">Allocation Done!</a></td>
</tr>             
<%        }
      } 
    else
     {
        if(pd.after(dd)||pd.equals(dd))
        {
%>
<tr>
     <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><p style="color:#990000;font-size:18px;">Create Panel asap</p></td>
    <td><%=dd.toString()%></td>
    <td><a href="#" style="color:#ff3300;text-decoration:none;">Can't allocate</a></td>
</tr>
<%   
        } 
        else if(pd.before(dd))
        {
%>
<tr>
     <td><%=rs.getString("award")%></td>
    <td><%=rs.getString("eligible")%></td>
    <td><%=rs.getString("description")%></td>
    <td><p style="color:#990000;font-size:18px;">Create Panel asap</p></td>
    <td><%=dd.toString()%></td>
    <td><a href="#" style="color:#d2d007;text-decoration:none;">Deadline is Due!</a></td>
</tr>
<%        }
     }
   }
%>
      </table>
      </div>
    </center><br><br><br><br>
  </body>
</html>
