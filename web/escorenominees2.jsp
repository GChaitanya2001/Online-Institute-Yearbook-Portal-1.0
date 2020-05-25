<%-- 
    Document   : escorenominees2
    Created on : 16 May, 2020, 7:07:31 PM
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
    
    
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String award=request.getParameter("award");
   String utype=request.getParameter("utype");
   String name=request.getParameter("name");
%>

<div class="loginbox" style="top:380px;height:740px;">
    <img src="user.png" alt="Bad Attempt!" class="loginimg">
    <h1 style="font-size:25px;color:#990000;"><b>Score Board</b></h1>
    <form action="escorenomineesact.jsp" method="post">
        <p>Name:</p>
        <input type="text" name="name" value="<%=name%>" readonly>
        <p>User Type:</p>
        <input type="text" name="utype" value="<%=utype%>" readonly>
        <p>Award Name:</p>
        <input type="text" name="award" value="<%=award%>" readonly>
        <p>Score(Out of 100):</p>
        <input type="number" name="score" min="0" max="100" placeholder="Enter Score" required="" autocomplete="off">
        <p>Comments:</p>
        <textarea rows="6" cols="30" name="comments" style="width:90%;background:transparent;border:1px solid #000;" required=""></textarea><br><br>
        <center><input type="submit" value="SUBMIT"></center>
    </form>
</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <center><a href="escorenominees1.jsp?award=<%=award%>&utype=<%=utype%>" style="padding:15px;font-size:20px;background:#444;color:#fff;text-decoration:none;border-radius:10%;;width:10%;">Back</a></center>
    </body>
</html>
