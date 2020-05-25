<%-- 
    Document   : acreateexpertact
    Created on : 20 May, 2020, 11:32:10 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
 String ename=request.getParameter("ename");
 String passw=request.getParameter("passw");
 
 String sql="select * from login where username='"+ename+"' and utype='expert'";
 Statement st=conn.createStatement();
 ResultSet rs=st.executeQuery(sql);
 
 if(rs.next())
 {
     response.sendRedirect("acreateexpert.jsp?msg=Expert already Exist!");
 } 
 else
 {
     PreparedStatement ps=conn.prepareStatement("insert into login(username,password,utype) values('"+ename+"','"+passw+"','expert')");
     ps.executeUpdate();
     
     response.sendRedirect("acreateexpert.jsp?msg=Sucessfully created");
 }

%>
