<%--
Document : home.jsp
Created on : Nov 22, 2017
Place : Toronto, ON
Author	 : Medhanie Weldemariam
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="com.jwt.hibernate.model.User"%>
<%@page import="com.jwt.hibernate.service.LoginService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Result Page</title>
</head>

<center>
	<div id="container">
		<h1>List of members</h1><br />
	    <%=new Date()%></br>
		<%
			User user = (User) session.getAttribute("user");
		%>
		<b>Welcome <%=user.getFirstName() + " " + user.getLastName()%></b> <br />
		<a href="logout.jsp">Logout</a>
		</p>

		<table>
			<thead>
				<tr>
					<th>User Name</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<%
					LoginService loginService = new LoginService();
					List<User> list = loginService.getListOfUsers();
					for (User userObj : list) {
				%>
				<tr>
					<td><%=userObj.getUserName()%></td>
					<td><%=userObj.getFirstName()%></td>
					<td><%=userObj.getLastName()%></td>
					<td><%=userObj.getEmail()%></td>
				</tr>
				<%
					}
				%>
			
			<tbody>
		</table>
		<br />
	</div>
</center>
</body>

</html>