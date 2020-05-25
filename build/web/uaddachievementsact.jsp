<%-- 
    Document   : uaddachievementsact
    Created on : 13 May, 2020, 1:36:10 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
    String name=session.getAttribute("user").toString();
    String utype=session.getAttribute("utype").toString();
    String year=request.getParameter("year");
    String dept=request.getParameter("dept");
    String event=request.getParameter("event");
    String authority=request.getParameter("authority");
    String desc=request.getParameter("desc");
    String proof=request.getParameter("proof");
    try{
    PreparedStatement ps=conn.prepareStatement("insert into achievements(name,utype,year,department,event,authority,description,proof) values('"+name+"','"+utype+"','"+year+"','"+dept+"','"+event+"','"+authority+"','"+desc+"','"+proof+"')");
    ps.executeUpdate();
    
     response.sendRedirect("uaddachievements.jsp?msg=Updated Successfully!");
    }
    catch(Exception e1){
        response.sendRedirect("uaddachievements.jsp?msg=Error in updating!Try Again");
    }
%>
