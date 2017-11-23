<%--
Document : register.jsp
Created on : Nov 22, 2017
Place : Toronto, ON
Author	 : Medhanie Weldemariam
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
<link href="css/samplestyle.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<h3>Registration Form</h3>
	<form action="UserRegisterServlet" method="post">
		<table align="center" cellpadding="10pt">
			<tr>
				<td>First Name :</td>
				<td><input type="text" name="firstName" size="30" />(max 30
					characters a-z and A-Z)</td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="lastName" size="30" />(max 30
					characters a-z and A-Z)</td>
			</tr>

			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" size="100" /></td>
			</tr>
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="userName" size="100" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="passWord" size="100" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register"> <input type="reset" value="Reset">
				</td>
			</tr>

		</table>

	</form>
</body>
</html>