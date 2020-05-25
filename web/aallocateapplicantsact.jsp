<%-- 
    Document   : aallocateapplicantsact
    Created on : 15 May, 2020, 1:27:27 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@include file="connectdb.jsp"%>
<%@page session="true"%>

<%
  String award=request.getParameter("award");
  String utype=request.getParameter("utype");
  int expertnum=Integer.parseInt(request.getParameter("expertnum"));
  int count=Integer.parseInt(request.getParameter("count"));
  int temp=count/expertnum;
  int i,a=0,b=0;
  String expert=null;
  
  String[] panel=request.getParameterValues("panel");
  if(panel.length==expertnum)
  {
      String sql="select * from applicants where awardname='"+award+"' and utype='"+utype+"'";
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery(sql);
      
      for(i=1;i<=(expertnum-1);i++)
      {
        expert=panel[i-1];  
        b=i*temp;
        while(a!=b)
        {
          if(rs.next())
          {
            PreparedStatement ps=conn.prepareStatement("update applicants set expertallot='"+expert+"' where name='"+rs.getString("name")+"' and utype='"+rs.getString("utype")+"' and awardname='"+award+"'");
            ps.executeUpdate();
            a++;
          }
        }
        a=i*temp;
      }
      expert=panel[expertnum-1];
      while(rs.next())
      {
          PreparedStatement ps2=conn.prepareStatement("update applicants set expertallot='"+expert+"' where name='"+rs.getString("name")+"' and utype='"+rs.getString("utype")+"' and awardname='"+award+"'");
          ps2.executeUpdate();
      }
      response.sendRedirect("aallocateapplicants.jsp?msg=Successful");
  }  
  else
  {
      response.sendRedirect("aallocateapplicants1.jsp?award="+award+"&utype="+utype+"&expertnum"+expertnum+"&msg=Error!");
  }
%>
