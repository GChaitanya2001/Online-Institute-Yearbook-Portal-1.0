<%-- 
    Document   : acreatepanelact
    Created on : 14 May, 2020, 1:51:26 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
   String award=request.getParameter("award");
   String utype=request.getParameter("utype");
   int expertnum=Integer.parseInt(request.getParameter("expertnum"));
   String[] panel=request.getParameterValues("panel");
   int i=0;
   String expert=null;
   i=panel.length;
   if(i==expertnum)
   {
       for(i=0;i<expertnum;i++)
       {
           expert=panel[i];
           PreparedStatement ps=conn.prepareStatement("insert into panel(award,utype,expert,stats,expertnum) values('"+award+"','"+utype+"','"+expert+"','nil','"+expertnum+"')");
           ps.executeUpdate();
           PreparedStatement ps1=conn.prepareStatement("update awards set expertnum='"+expertnum+"' where award='"+award+"' and eligible='"+utype+"'");
           ps1.executeUpdate();
       }
       response.sendRedirect("acreatepanel.jsp?msg=Panel Sucessfully Created");
   }
   else
   {
       response.sendRedirect("acreatepanel1.jsp?award="+award+"&utype="+utype+"&msg=Something went wrong!");
   }
   
  
   
%>