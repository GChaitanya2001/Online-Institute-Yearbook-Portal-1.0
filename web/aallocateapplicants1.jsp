<%-- 
    Document   : aallocateapplicants1
    Created on : 14 May, 2020, 2:58:48 PM
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
<%@page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String award=request.getParameter("award");
   String utype=request.getParameter("utype");
   int expertnum=Integer.parseInt(request.getParameter("expertnum"));
%>

<h1 style="color:#990000;font-size:30px;"><b>Allocate Applicants</b></h1>
    <center>
        <div style="box-shadow:5px 5px 5px 5px grey;width:30%">
        <table style="width:100%;">
            <tr style="background:#f2f2f2">
                <td>Award Name</td><td>:</td><td><%=award%></td>
            </tr>
            <tr style="background:#f2f2f2;">
                <td>Eligible Users</td><td>:</td><td><%=utype%></td>
            </tr>
        </table>
        </div>
    </center><br>
    <center>
    <div style="width:70%;box-shadow:5px 5px 5px 5px grey;">
        <table style="width:100%;">
            <tr>
                <th>Group No.</th>
                <th>From</th>
                <th>To</th>
                <th>Allot expert</th>
            </tr>
<%
   String sql="select count(name) from applicants where awardname='"+award+"' and utype='"+utype+"'";
   Statement st=conn.createStatement();
   ResultSet rs=st.executeQuery(sql);
   int count=0;
   if(rs.next()){
       count=Integer.parseInt(rs.getString(1));
   }
   int temp=0;
   int i=0,a=1,b=0;
   temp=count/expertnum;
%> 

<form action="aallocateapplicantsact.jsp?award=<%=award%>&utype=<%=utype%>&expertnum=<%=expertnum%>&count=<%=count%>" method="post">
    
<%   for(i=1;i<=(expertnum-1);i++)
    {
       b=i*temp;
       String sql2="select * from panel where award='"+award+"' and utype='"+utype+"'";
       Statement st2=conn.createStatement();
       ResultSet rs2=st2.executeQuery(sql2);
%>
<tr>
    <td>Group&nbsp;<%=i%></td>
    <td><%=a%></td>
    <td><%=b%></td>
    <td>
        <select name="panel" required="">
            <option value="">--Select--</option>
   <%
          while(rs2.next()){
   %>   
            <option value=<%=rs2.getString("expert")%>><%=rs2.getString("expert")%></option>   
    <%}%>   
       </select>
    </td>
</tr>
<% 
      a=i*temp+1;
    }
       String sql3="select * from panel where award='"+award+"' and utype='"+utype+"'";
       Statement st3=conn.createStatement();
       ResultSet rs3=st3.executeQuery(sql3);
%>   
<tr>
    <td>Group&nbsp;<%=expertnum%></td>
    <td><%=a%></td>
    <td><%=count%></td>
    <td>
        <select name="panel" required="">
            <option value="">--Select--</option>
<%
  while(rs3.next()){
%> 
<option value=<%=rs3.getString("expert")%>><%=rs3.getString("expert")%></option>
<%}%>
        </select>
    </td>
</tr><br>
</table>
    </div>
         </center>
        <br><br>
      <center><input type="submit" value="ALLOCATE" style="padding:15px;font-size:20px;border:none;border-radius:30px;width:300px;background:green;color:#fff;"></center>
</form> 
    </body>
</html>
