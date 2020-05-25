<%-- 
    Document   : efinalisenominee
    Created on : 16 May, 2020, 3:44:34 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String award=request.getParameter("award");
  String utype=request.getParameter("utype");
  String expert=request.getParameter("expert");
  
 PreparedStatement ps=conn.prepareStatement("update panel set stats='finalise' where award='"+award+"' and utype='"+utype+"' and expert='"+expert+"'");
 ps.executeUpdate();
 
 response.sendRedirect("eshortlistnominees.jsp?msg=Successfully finalised!");

%>