@Author: Medhanie Weldemariam
@Date: November 22, 2017
@Place: Toronto, ON

This is a simple Java web application program I developed using MVC pattern. The program works as follows;
When a student/user accesses the application ,login page will be displayed. If the user is new user, then there is a link for the registration. Once user registers, all the details will be collected in the servlet and finally data will be saved the database by using hibernate ORM tools. Once user got registered, he/she becomes a member and can login to the application and use the website. If the user enters wrong username or passowrd, then the page will be redirected into an error page.


I used JSP pages as a VIEW layer, Hibernate framework ORM tools and PostgreSQL database as the MODEL layer and servlet as CONTROLLER layer.

The JSP pages contains HTML page with the added functionality of some Java code. It is responsible for interacting with the server or controller who in turn interacts with the database to request/response stream of data from the underlying repository.

Controller Layer : Business service in the form of Java classes and Servlet.  for data access.

To help the web pages looks or feels good, I tried to use some CSS and an image.

Tools and Technologies :

 JDK 1.7.0_80
 Hibernate 3.6.3.Final
 Eclipse Luna
 PostgreSQL 9.4.8 on x86_64
 JDBC driver for PostgreSQL
 Tomcat v8.0
 Ubuntu 16.04

