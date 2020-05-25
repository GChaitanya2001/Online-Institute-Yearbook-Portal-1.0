> # Online-Institute-Yearbook-Portal 1.0
* This is a Java web application,an online repository that facilitates teachers and students of an Institute to record their achievements in an Year,which is very easily accessible,with just a click away.
* Also,the Institute can give away Awards/Scholarships using this application to its Students/Teachers in two rounds.

## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
-   For every institution,the achievements achieved by it’s student community and by its teaching staff is remarkable.
    
-   This depicts the true strength of an institution and helps us to recapitulate our memories,also in building a better version of ourselves which in turn ensures uplifting the institute’s reputation as a whole.
    
-   Also many institutions,provide many scholarships,and also encourage it’s community by giving away some awards.
    
The manual process of recording these achievements and the award/scholarship issue process is obviously time-consuming and its maintenance is undeniably difficult.Usually,one should go to the academic section of the institute,in order to apply for an award or a scholarship and had to go through a tiring process.

## Screenshots
![Hello]

## Technologies
* Tech 1 - Java 8 SE Development Kit
* Tech 2 - Apache Tomcat 9.0
* Tech 3 - MySQL Database
* Tech 4 - Apache NetBeans 11.3 IDE

## Setup
The following softwares need to be installed to host the web application:
* [Java 8 SE Development Kit](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
* [Apache Tomcat 9.0 (WebServer)](https://tomcat.apache.org/download-90.cgi) For Local Hosting
* [MySQL Database](https://dev.mysql.com/downloads/)

For Windows OS,follow these steps to install and run the application,
1)First install aforementioned softwares.

2)Install Java SE 8,if not installed yet.
   Refer this youtube link on how to set environment variables:[https://www.youtube.com/watch?v=XsdvQD_SDvw](https://www.youtube.com/watch?v=XsdvQD_SDvw)
   
3)While installing Apache tomcat 9.0,select windows service installer.
The port is set to 8080 by default unless manually changed.
I have set to 8082 port.
Refer this link:[https://www.youtube.com/watch?v=pKMgr8uNvGM&t=271s](https://www.youtube.com/watch?v=pKMgr8uNvGM&t=271s)

4)Now,install MySQL database,and the port will be set to 3306,which is default.
Set the username and password as follows to avoid errors while connecting:
username: root
password: root
Refer this link:[https://www.youtube.com/watch?v=WuBcTJnIuzo](https://www.youtube.com/watch?v=WuBcTJnIuzo)

5)Now, clone the git repository.
Check this link:[https://confluence.atlassian.com/bitbucket/clone-a-repository-223217891.html](https://confluence.atlassian.com/bitbucket/clone-a-repository-223217891.html)

6)From the database folder of the repository,the .sql file must be imported.
For that first open the MySQL 8.0 command line client.Now,create a database with name 'yearbook',by executing the following command,

    mysql > create database yearbook
Now,open windows command prompt in administrator mode and navigate to bin folder of MySQL Server 8.0.Now execute the following command,

    C:\Program Files\MySQL\MySQL Server 8.0\bin > mysql -u root -p yearbook < "path to required yearbook_db.sql file"

   Refer this link:[https://www.youtube.com/watch?v=HYVW5RlM6b0](https://www.youtube.com/watch?v=HYVW5RlM6b0)

7)Navigate to the dist folder of the web app`/Online Institute Yearbook Portal/dist/`from cloned repository,Copy the .war file.
 Now,navigate to webapps`folder of the Apache tomcat and paste the war file there.Then,start the web server from the tomcat9.0w.exe file of  bin folder from Apache Tomcat 9.0 software.
 Now the .war file must have been extracted as soon as the server starts.
Refer this link:[https://www.youtube.com/watch?v=jZL33Hggf-I](https://www.youtube.com/watch?v=jZL33Hggf-I)

8)The web application can be accessed from [https://localhost:8082/Online_Institute_Yearbook_Portal/](http://localhost:8082/Online_Institute_Yearbook_Portal/),if the port number is 8082 ,else try with the port number that you have set.
 
## Features
List of features ready and TODOs for future development
*  All the features are implemented that are required for Yearbook portal

To-do list:
* The Registration can be confirmed via Email Verification.
* While Students/Teachers Add Achievements,they can also upload their work they have done which may be helpful.
## Status
This is the first-version of Online Institute Yearbook Portal.

## Inspiration
The manual process of recording achievements and the Award/Scholarship issuing process is heuristic . An Online Web Application makes it easy to maintain and handle this recording process.

## Contact
Created by [@chaitanya6575@gmail.com]-Contact me if there are any issues.
