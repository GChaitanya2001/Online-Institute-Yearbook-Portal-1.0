<%-- 
    Document   : register
    Created on : 11 May, 2020, 1:52:57 AM
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
    </head>
    <body>
        <%
          if(request.getParameter("msg")!=null){
        %>
        <script>alert("<%=request.getParameter("msg")%>");</script>
        <%}%>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header>
        <div class="loginbox" style="height:720px;top:350px;">
            <img src="user.png" alt="Bad Attempt!" class="loginimg">
            <center><h1 style="font-weight:normal;font-size:32px;">Register</h1></center>
           <form action="registeract.jsp" method="post">
             <input type="text" name="uname" placeholder="Enter Username" autocomplete="off" required="">
             <input type="password" name="passw" placeholder="Enter Password" autocomplete="off" required="">
             <select name="utype" required="" autocomplete="off">
                 <option value="">Select User type</option>
                 <option value="student">Student</option>
                 <option value="teacher">Teacher</option>
             </select><br><br>
              <select name="dept" required="" autocomplete="off">
                 <option value="">Select Department/Center</option>
                 <option value="cse">CSE</option>
                 <option value="ee">EE</option>
                 <option value="eece">EECE</option>
                 <option value="math">MnC</option>
                 <option value="mech">Mechanical</option>
                 <option value="civil">Civil</option>
                 <option value="biotech">BioTech</option>
                 <option value="phy">Physics</option>
                 <option value="chem">Chemistry</option>
             </select><br><br>
             <input type="text" name="desig" placeholder="Enter Designation" autocomplete="off" required="">
             <input type="email" name="email" placeholder="Enter Email Address" autocomplete="off" required="">
            <input type="text" name="id" placeholder="Enter Institute ID No." autocomplete="off" required="">
            <input type="text" name="phone" placeholder="Enter Phone No." autocomplete="off" required=""><br>
            <center><input type="submit" value="REGISTER"></center>
            </form>
            <center><a href="index.html" style="text-decoration:underline;">Login Page</a></center>
        </div>
    </body>
</html>
