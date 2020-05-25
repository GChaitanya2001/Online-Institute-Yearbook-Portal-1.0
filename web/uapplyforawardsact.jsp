<%-- 
    Document   : uapplyforawardsact
    Created on : 14 May, 2020, 12:15:31 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
 try
 {
  String award=request.getParameter("award");
  String name=request.getParameter("name");
  String utype=request.getParameter("utype");
  String desc=request.getParameter("desc");

  PreparedStatement ps=conn.prepareStatement("insert into applicants(name,utype,awardname,expertallot,status,score,comments,description) values('"+name+"','"+utype+"','"+award+"','not alloted','nil','-1','nil','"+desc+"')");
  ps.executeUpdate();
  
  response.sendRedirect("uapplyforawards.jsp?msg=Application Accepted!");
 }
    catch(Exception e1)
    {
        response.sendRedirect("uapplyforawards1.jsp?msg=Something went wrong!");
    }
%>
