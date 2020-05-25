<%-- 
    Document   : uapplyforaward
    Created on : 13 May, 2020, 12:42:46 PM
    Author     : Manisekhar Gajula
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
     <%
          String msg=request.getParameter("msg");
          if(msg!=null){
     %>
        <script>alert(<%=msg%>);</script>
     <%}%>
    </head>
    <body>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br>
    <center>
        <nav>
            <a href="userhome.jsp">Home</a>
            <a href="uviewachievements.jsp">View Achievements</a>
            <a href="uaddachievements.jsp">Add Achievements</a>
            <a href="uapplyforawards.jsp" style="color:black;background:white;">Apply for Awards</a>
            <a href="uviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
<%@page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  Date td=new Date();
  SimpleDateFormat forma=new SimpleDateFormat("yyyy-MM-dd");
  String td1=forma.format(td);
  
  String utype=session.getAttribute("utype").toString();
  String name=session.getAttribute("user").toString();
  
 String sql="select * from awards where eligible='"+utype+"'";
 Statement stmt=conn.createStatement();
 ResultSet rs=stmt.executeQuery(sql);
 try{
%>

<center><h1 style="color:#990000;font-size:30px;width:25%;background:#d2d007;padding:5px;border-radius:30px;"><b>Apply for Awards</b></h1></center>
<br><br> 
<div>
<center>
  <div style="overflow-y:auto;max-height:380px;width:70%;box-shadow:5px 5px 5px 5px grey;overflow:hidden;">
    <table style="width:100%">
        <tr>
            <th>Award Name</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Apply for Award</th>
        </tr>
 <%
    while(rs.next())
    {
    String deadline=rs.getString("deadline");
    Date dd=forma.parse(deadline);
    Date pd=forma.parse(td1);
    
    String sql1="select * from applicants where name='"+name+"' and awardname='"+rs.getString("award")+"' and utype='"+utype+"'";
    Statement stmt1=conn.createStatement();
    ResultSet rs1=stmt1.executeQuery(sql1);
    
    if(rs1.next()){
%>
<tr>
     <td><%=rs.getString("award")%></td>
     <td><%=rs.getString("description")%></td>
     <td><%=dd.toString()%></td>
     <td><a href="#" style="color:#599e0b;text-decoration:none;">You're now an applicant</a></td>
 </tr>
<%    }
    else
    {    
    if(pd.before(dd)){
 %>       
 <tr>
     <td><%=rs.getString("award")%></td>
     <td><%=rs.getString("description")%></td>
     <td><%=dd.toString()%></td>
     <td><a href="uapplyforawards1.jsp?award=<%=rs.getString("award")%>&utype=<%=utype%>" style="color:#990000;">Apply for Award</a></td>
 </tr>
 <%
     }
    else if(pd.after(dd)|| pd.equals(dd))
    {
%>      
   <tr>
     <td><%=rs.getString("award")%></td>
     <td><%=rs.getString("description")%></td>
     <td><%=dd.toString()%></td>
     <td><a href="#"style="color:#d2d007;text-decoration:none;">Deadline crossed</a></td>
 </tr>
<%    }
  }
}
}
catch(Exception e1){
   out.println(e1);
}
 %>
       </table>
       </div>
</center><br><br><br>
       <div class="loginbox" style="top:850px;width:800px;height:350px;">
          <img src="notice.png" alt="Bad Attempt!" class="loginimg" style="border-radius:0;">
          <h1 style="color:#990000;font-size:25px;"><b>Note</b></h1>
        <center>
            <p>The award issue process has two main rounds:</p><br>
            <p style="font-weight:normal;"><b>Round 1 :&nbsp;</b>The applicants are shortlisted by a panel of experts "choosen" by the admin,into nominees,These nominees are further qualified to Round-2.</p><br>
            <p style="font-weight:normal;"><b>Round 2 :&nbsp;</b>The nominees are then scored out of 100,based on their credibility and the <b>top 3</b> scorers will be awarded.</p><br> 
        </center>
       </div>
</div>
    </body>
</html>
