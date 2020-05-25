<%-- 
    Document   : aupdateannouncementsact
    Created on : 13 May, 2020, 9:42:38 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String award=request.getParameter("award");
  String elig=request.getParameter("elig");
  String desc=request.getParameter("desc");
  String deadline=request.getParameter("deadline");
  
  String sql="select * from awards where award='"+award+"' and eligible='"+elig+"'";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  
  if(rs.next())
  {
      response.sendRedirect("aupdateannouncements.jsp?msg=An award with same name is already announced");
  }
  
  else
  {
     PreparedStatement ps=conn.prepareStatement("insert into awards(award,description,deadline,expertnum,eligible) values('"+award+"','"+desc+"','"+deadline+"','-1','"+elig+"')"); 
     ps.executeUpdate();
     response.sendRedirect("aupdateannouncements.jsp?msg=Updated Sucessfully");
  }

%>