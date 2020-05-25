<%-- 
    Document   : uaddachievements
    Created on : 12 May, 2020, 3:15:31 PM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0;">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="stylecss.css">
     <%
          String msg=request.getParameter("msg");
          if(msg!=null){
     %>
        <script>alert("<%=msg%>");</script>
     <%}%>
    </head>
    <body>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br>
    <center>
        <nav>
            <a href="userhome.jsp">Home</a>
            <a href="uviewachievements.jsp">View Achievements</a>
            <a href="uaddachievements.jsp" style="color:black;background:white;">Add Achievements</a>
            <a href="uapplyforawards.jsp">Apply for Awards</a>
            <a href="uviewresults.jsp">View Results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center>
    <div class="loginbox" style="height:800px;top:400px;width:450px;">
         <img src="achieve.png" alt="Bad Attempt!" class="loginimg">
         <h1 style="color:#990000;"><b>Add Achievements</b></h1>
        <form action="uaddachievementsact.jsp" method="post">
        <p>Select Year:</p>
        <select name="year" required="" autocomplete="off">
                 <option value="">--Select Year--</option>
                 <option value="2001">2001</option>
                 <option value="2002">2002</option>
                 <option value="2003">2003</option>
                 <option value="2004">2004</option>
                 <option value="2005">2005</option>
                 <option value="2006">2006</option>
                 <option value="2007">2007</option>
                 <option value="2008">2008</option>
                 <option value="2009">2009</option>
                 <option value="2010">2010</option>
                 <option value="2011">2011</option>
                 <option value="2012">2012</option>
                 <option value="2013">2013</option>
                 <option value="2014">2014</option>
                 <option value="2015">2015</option>
                 <option value="2016">2016</option>
                 <option value="2017">2017</option>
                 <option value="2018">2018</option>
                 <option value="2019">2019</option>
                 <option value="2020">2020</option>
             </select><br><br>
             <p>Select Area of Study:</p>
             <select name="dept" required="" autocomplete="off">
                 <option value="">--Select Department--</option>
                 <option value="cse">CSE</option>
                 <option value="ee">EE</option>
                 <option value="eece">EECE</option>
                 <option value="math">MnC</option>
                 <option value="mech">Mechanical</option>
                 <option value="civil">Civil</option>
                 <option value="biotech">BioTech</option>
                 <option value="phy">Physics</option>
                 <option value="chem">Chemistry</option>
             </select><br><br>
             <p>Event Name:</p>
             <input type="text" name="event" placeholder="Enter Event Name" required="" autocomplete="off">
             <p>Organizing Authority:</p>
             <input type="text" name="authority" placeholder="Enter Organizing Authority" required="" autocomplete="off">
             <p>Description:</p>
             <textarea rows="6" cols="30" name="desc" required="" style="background:transparent;border:1px solid #000;width:90%;"></textarea>
             <p>Proof for Authentication:</p>
             <input type="url" name="proof" placeholder="Provide online url for authentication" required="" autocomplete="off"><br>
             <center><input type="submit" value="ADD"></center>
        </form>
    </div>
    </body>
</html>
