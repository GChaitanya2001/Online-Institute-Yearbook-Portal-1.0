<%-- 
    Document   : changepassword
    Created on : 20 May, 2020, 11:52:23 PM
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
        </header><br><br><br><br>
    <div class="loginbox" style="height:400px;top:350px;">
            <img src="user.png" alt="Bad Attempt!" class="loginimg">
            <center><h1 style="font-weight:normal;font-size:32px;">Change Password</h1></center>
            <form action="changepasswordact.jsp" method="post">
                <p>Enter New Password</p>
                <input type="password" name="passw1" placeholder="Enter Password" required="" autocomplete="off">
                <p>Confirm by Re-entering:</p>
                <input type="password" name="passw2" placeholder="Re-enter Password" required="" autocomplete="off">
                <center><input type="submit" value="CHANGE"></center>
            </form>
    </div><br><br><br><br><br><br>
    </body>
</html>
