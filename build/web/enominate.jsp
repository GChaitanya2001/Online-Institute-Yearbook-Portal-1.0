<%-- 
    Document   : enominate
    Created on : 16 May, 2020, 1:15:47 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String name=request.getParameter("name");
   String utype=request.getParameter("utype");
   String award=request.getParameter("award");
   String expert=request.getParameter("expert");
   
  PreparedStatement ps=conn.prepareStatement("update applicants set status='nominate' where name='"+name+"' and utype='"+utype+"' and awardname='"+award+"' and expertallot='"+expert+"'");
  ps.executeUpdate();
  
  response.sendRedirect("eshortlistnominees1.jsp?award="+award+"&utype="+utype);

%>