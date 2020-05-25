<%-- 
    Document   : uviewresults1
    Created on : 17 May, 2020, 7:30:54 PM
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
            <a href="userhome.jsp">Home</a>
            <a href="uviewachievements.jsp">View Achievements</a>
            <a href="uaddachievements.jsp">Add Achievements</a>
            <a href="uapplyforawards.jsp">Apply for Awards</a>
            <a href="uviewresults.jsp" style="color:black;background:white;">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<center><h1 style="font-size:30px;color:#990000;background:#d2d007;padding:5px;width:20%;border-radius:30px;"><b>View Results</b></h1></center><br><br>

<%
  String award=request.getParameter("award");
  String utype=request.getParameter("utype");
  String name=session.getAttribute("user").toString();
  
  String sql="select * from panel where award='"+award+"' and utype='"+utype+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  int i=0,expertnum=0;
  
  while(rs.next())
  {
     if(rs.getString("stats").equals("finalise"))
     {
         i++;
     } 
     expertnum=Integer.parseInt(rs.getString("expertnum"));
  }
  
  if(i==expertnum)
  {
      String sql1="select * from applicants where awardname='"+award+"' and utype='"+utype+"' and status='nominate' and score=-1";
      Statement st1=conn.createStatement();
      ResultSet rs1=st1.executeQuery(sql1);
      if(rs1.next())
      {
%> 
<center>
<div style="top:450px;width:90%;height:740px;box-shadow:5px 5px 5px 5px grey;border-radius:10%;padding:50px 30px 50px 50px;background:lightgoldenrodyellow">
    <center><h1 style="color:#009933;font-size:30px;"><b style="color:#990000">Award Name</b>&nbsp;:&nbsp;<b>"<%=award%>"</b></h1></center><br>
    <div style="width:50%;float:left;border-right:1px solid #ccc;height:600px;">
        <h1 style="font-size:30px;color:#990000;"><b>Round 1 Results</b></h1><br> 
        <h1 style="font-size:30px;"><b>NOMINATIONS</b></h1> <br> 
        <center>
        <div style="box-shadow:2px 2px 2px 2px grey;width:90%;max-height:300px;overflow-y:auto;">
            <table style="width:100%;">
                <tr>
                    <th>S.No</th>
                    <th>Name</th>
                    <th>Description</th>
                </tr>
<%
   int j=1; 

  String sql2="select * from applicants where awardname='"+award+"' and utype='"+utype+"' and status='nominate'";
  Statement st2=conn.createStatement();
  ResultSet rs2=st2.executeQuery(sql2);
  boolean check=false;
  while(rs2.next())
   {
       if(name.equals(rs2.getString("name")))
       {
         check=true;  
       }
%> 
<tr>
    <td><%=j%></td>
    <td><%=rs2.getString("name")%></td>
    <td><%=rs2.getString("description")%></td>
</tr>
<%
    j++;
   }
%>               
            </table> 
        </div>
        <%
             if(check==true){
        %>
        <p style="font-size:20px;background:#ffccff;padding:12px;width:50%;border-radius:20px;"><b>Congrats!You're Nominated</b></p>
        <%}%>
        </center>    
    </div>
    <div style="width:50%;float:right;height:600px;">
        <div style="background:pink;border-radius:10%;width:80%;">
        <h1 style="font-size:30px;color:#990000;"><b>Round 2 Results</b></h1><br>  
        <h1 style="font-size:30px;color:#990000;"><b>"Results are yet to be announced!"</b></h1> 
        </div>
    </div>
</div>
</center><br><br>
<%    }
      else
      {
%>
<center>
<div style="top:450px;width:90%;height:740px;box-shadow:5px 5px 5px 5px grey;border-radius:10%;padding:50px 30px 50px 50px;background:lightgoldenrodyellow">
    <center><h1 style="color:#009933;font-size:30px;"><b style="color:#990000">Award Name</b>&nbsp;:&nbsp;<b>"<%=award%>"</b></h1></center><br>
    <div style="width:50%;float:left;border-right:1px solid #ccc;height:600px;">
        <h1 style="font-size:30px;color:#990000;"><b>Round 1 Results</b></h1><br> 
        <h1 style="font-size:30px;"><b>NOMINATIONS</b></h1> <br> 
        <center>
        <div style="box-shadow:2px 2px 2px 2px grey;width:90%;max-height:300px;overflow-y:auto;">
            <table style="width:100%;">
                <tr>
                    <th>S.No</th>
                    <th>Name</th>
                    <th>Description</th>
                </tr>
<%
   int j=1; 

  String sql2="select * from applicants where awardname='"+award+"' and utype='"+utype+"' and status='nominate'";
  Statement st2=conn.createStatement();
  ResultSet rs2=st2.executeQuery(sql2);
  boolean check1=false;
  while(rs2.next())
   {
      if(name.equals(rs2.getString("name")))
       {
         check1=true;  
       }    
%> 
<tr>
    <td><%=j%></td>
    <td><%=rs2.getString("name")%></td>
    <td><%=rs2.getString("description")%></td>
</tr>
<%
    j++;
   }
%>               
            </table> 
        </div>
        <%
             if(check1==true){
        %>
        <div>
            <p style="font-size:20px;background:#ffccff;padding:12px;width:50%;border-radius:20px;"><b>Congrats!You're Nominated</b></p>
        </div>    
        <%}%>
        </center>    
    </div>
    <div style="width:50%;float:right;max-height:550px;overflow-y:auto;">
        <h1 style="font-size:30px;color:#990000;"><b>Round 2 Results</b></h1><br> 
        <h1 style="font-size:30px;"><b>WINNERS</b></h1>
<%
  String sql3="select * from applicants order by score desc";
  Statement st3=conn.createStatement();
  ResultSet rs3=st3.executeQuery(sql3);
  int k=1;
  while(rs3.next())
  {
      if(k<=3 && rs3.getString("awardname").equals(award) && rs3.getString("utype").equals(utype) && rs3.getString("status").equals("nominate"))
      {
          if((rs3.getString("name")).equals(name)){
%> 
<center>
    <div style="background:#ffccff;width:70%;border-radius:20px;font-size:20px;">
    <img src="user.png" alt="Bad Attempt!" width="100" height="100" style="top:-50px;left:calc(50% -50px);"> 
    <p><b>Name&nbsp;:&nbsp;</b><%=rs3.getString("name")%></p>
    <p><b>User type&nbsp;:&nbsp;</b><%=rs3.getString("utype")%></p>
    <div style="max-height:100px;overflow-y:auto;width:80%;">
    <p><b>Comments&nbsp;:&nbsp;</b><%=rs3.getString("comments")%></p>
    </div>
    <p style="color:#990000;"><b>CONGRATS,YOU WON!</b></p><br>
</div>
</center><br>    
<%    
    k++;  
    }
    else{
%>
<center>
    <div style="background:#ffcc99;width:70%;font-size:20px;border-radius:20px;">
    <img src="user.png" alt="Bad Attempt!" width="100" height="100" style="top:-50px;left:calc(50% -50px);"> 
    <p><b>Name&nbsp;:&nbsp;</b><%=rs3.getString("name")%></p>
    <p><b>User type&nbsp;:&nbsp;</b><%=rs3.getString("utype")%></p><br>
</div>
</center><br>    
<%    }
  }
}
%>              
    </div>
</div>
</center><br><br>
<%      
    }
}
  else
  {
%> 
<div class="loginbox" style="width:100%;top:480px;height:250px;font-size:20px;">
    <img src="achieve.png" alt="Bad Attempt!" class="loginimg">
    <h1 style="color:#009933;font-size:30px;"><b>Award Name&nbsp;:&nbsp;<%=award%></b></h1>
    <h1 style="color:#990000"><b>Round 1 Results not declared yet!</b></h1> 
</div>
<%  }
%>

    </body>
</html>
