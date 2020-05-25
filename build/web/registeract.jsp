<%-- 
    Document   : registeract
    Created on : 11 May, 2020, 3:04:10 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
    String uname=request.getParameter("uname");
    String passw=request.getParameter("passw");
    String utype=request.getParameter("utype");
    String email=request.getParameter("email");
    String desig=request.getParameter("desig");
    String id=request.getParameter("id");
    String phone=request.getParameter("phone");
    String dept=request.getParameter("dept");
    
   String sql="select * from reg where username='"+uname+"'";
   Statement st=conn.createStatement();
   ResultSet rs=st.executeQuery(sql);
   
   if(rs.next())
   {
       response.sendRedirect("register.jsp?msg=User Already Exists!");
   }
   else
   {
       PreparedStatement ps=conn.prepareStatement("insert into reg(username,password,utype,id,email,designation,phone,dept) values('"+uname+"','"+passw+"','"+utype+"','"+id+"','"+email+"','"+desig+"','"+phone+"','"+dept+"')");
       ps.executeUpdate();
       PreparedStatement ps1=conn.prepareStatement("insert into login(username,password,utype) values('"+uname+"','"+passw+"','"+utype+"')");
       ps1.executeUpdate();
       response.sendRedirect("index.html?msg=Successfully Registered");
   }

%>
