<%-- 
    Document   : loginaction
    Created on : 11 May, 2020, 1:33:43 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>
<%@page isThreadSafe="true"%>

<%
  String uname=request.getParameter("uname");
  String passw=request.getParameter("passw");
  String utype=request.getParameter("utype");
  
  if(utype.endsWith("student")||utype.endsWith("teacher"))
  {
     String sql="select * from login where username='"+uname+"' and password='"+passw+"' and utype='"+utype+"'";
     Statement st=conn.createStatement();
     ResultSet rs=st.executeQuery(sql);
     
     if(rs.next())
     {
         session.setAttribute("user",uname);
         session.setAttribute("utype",utype);
         response.sendRedirect("userhome.jsp?msg=Login Successful");
     }
     else
     {
       response.sendRedirect("index.html?msg=Login Failed");  
     }
  }
  
  else if(utype.endsWith("admin"))
  {
     String sql="select * from login where username='"+uname+"' and password='"+passw+"' and utype='"+utype+"'";
     Statement st=conn.createStatement();
     ResultSet rs=st.executeQuery(sql);
     
     if(rs.next())
     {
         session.setAttribute("user",uname);
         session.setAttribute("utype",utype);
         response.sendRedirect("adminhome.jsp?"+"msg=Login Successful");
     }
      else
     {
       response.sendRedirect("index.html?msg=Login Failed");  
     }
  }
  
  else if(utype.endsWith("expert"))
  {
     String sql="select * from login where username='"+uname+"' and password='"+passw+"' and utype='"+utype+"'";
     Statement st=conn.createStatement();
     ResultSet rs=st.executeQuery(sql);
     
     if(rs.next())
     {
         session.setAttribute("user",uname);
         session.setAttribute("utype",utype);
         response.sendRedirect("experthome.jsp?msg=Login Successful");
     }
     else
     {
       response.sendRedirect("index.html?msg=Login Failed");  
     }
  }
  
  
  
  

%>


