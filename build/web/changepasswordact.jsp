<%-- 
    Document   : changepasswordact
    Created on : 21 May, 2020, 12:01:37 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String name=session.getAttribute("user").toString();
  String utype=session.getAttribute("utype").toString();
  String passw1=request.getParameter("passw1");
  String passw2=request.getParameter("passw2");
  
  if(passw1.equals(passw2))
  {
    if(utype.equals("expert"))
    {  
    PreparedStatement ps=conn.prepareStatement("update login set password='"+passw1+"' where username='"+name+"' and utype='"+utype+"'");
    ps.executeUpdate();
    response.sendRedirect("experthome.jsp?msg=Password Changed!");
    }
    else if(utype.equals("student") || utype.equals("teacher"))
    {
    PreparedStatement ps=conn.prepareStatement("update login set password='"+passw1+"' where username='"+name+"' and utype='"+utype+"'");
    ps.executeUpdate();
    response.sendRedirect("userhome.jsp?msg=Password Changed!");
    PreparedStatement ps1=conn.prepareStatement("update reg set password='"+passw1+"' where username='"+name+"' and utype='"+utype+"'");
    ps1.executeUpdate();
    }
    else if(utype.equals("admin"))
    {
    PreparedStatement ps=conn.prepareStatement("update login set password='"+passw1+"' where username='"+name+"' and utype='"+utype+"'");
    ps.executeUpdate();
    response.sendRedirect("adminhome.jsp?msg=Password Changed!");    
    }
  }
  else
  {
     response.sendRedirect("changepassword.jsp?msg=Password Not Confirmed!there is a mismatch");
  }
%>