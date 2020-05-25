<%-- 
    Document   : aviewtachievements
    Created on : 13 May, 2020, 3:01:36 AM
    Author     : Manisekhar Gajula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0;">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sans-serif">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="stylecss.css">
    </head>
    <body>
        <header>
            <img src="logo.png" alt="Bad Attempt!" height="50" width="50">
            Online Institute Yearbook Portal
        </header><br><br><br><br><br>
    <center>
        <nav>
            <a href="adminhome.jsp">Home</a>
             <a href="acreateexpert.jsp">Create Expert</a>
            <a href="aviewachievements.jsp" style="color:black;background:white;">View Achievements</a>
            <a href="aupdateannouncements.jsp">Update Announcements</a>
            <a href="acreatepanel.jsp">Create Panel</a>
            <a href="aallocateapplicants.jsp">Allocate Applicants</a>
            <a href="aviewresults.jsp">View results</a>
            <a href="logout.jsp">Log Out</a>
        </nav>
    </center><br><br>
     <div class="loginbox" style="top:350px;height:400px">
         <img src="achieve.png" alt="Bad Attempt!" class="loginimg">
         <h1 style="color:#990000;"><b>Teacher Achievements</b></h1>
         <form action="aviewtachievements1.jsp" method="post">
             <p>Select Year</p>
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
             <p>Select Department</p>
             <select name="dept" required="" autocomplete="off">
                 <option value="">--Select Department--</option>
                 <option value="cse">CSE</option>
                 <option value="ee">EE</option>
                 <option value="eece">EECE</option>
                 <option value="mnc">MnC</option>
                 <option value="mech">Mechanical</option>
                 <option value="civil">Civil</option>
                 <option value="biotech">BioTech</option>
                 <option value="phy">Physics</option>
                 <option value="chem">Chemistry</option>
             </select><br><br>
             <center><input type="submit" value="VIEW"></center>
         </form>
    </div>
    <center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <a href="aviewachievements.jsp" style="border-radius:10%;padding:15px;font-size:18px;border:none;text-decoration:none;background:#333333;color:white;">Back</a>
    </center>
    </body>
</html>
