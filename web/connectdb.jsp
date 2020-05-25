<%-- 
    Document   : connectdb
    Created on : 11 May, 2020, 1:34:11 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
   Connection conn=null;
   try
   {
       Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yearbook","root","root");
   }
   catch(Exception e){
       System.out.println(e);
   }
%>
