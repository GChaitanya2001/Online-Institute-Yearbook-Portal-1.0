<%-- 
    Document   : escorenomineesact
    Created on : 16 May, 2020, 7:26:31 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String expert=session.getAttribute("user").toString();
  String name=request.getParameter("name");
  String utype=request.getParameter("utype");
  String award=request.getParameter("award");
  String score=request.getParameter("score");
  String comments=request.getParameter("comments");
  
  PreparedStatement ps=conn.prepareStatement("update applicants set score='"+score+"',comments='"+comments+"' where name='"+name+"' and utype='"+utype+"' and awardname='"+award+"' and expertallot='"+expert+"'");
  ps.executeUpdate();
  
 response.sendRedirect("escorenominees1.jsp?award="+award+"&utype="+utype);
%>
