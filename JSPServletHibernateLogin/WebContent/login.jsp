<%--
Document : login.jsp
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
<title>Login Page</title>

<link href="css/samplestyle.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<center>
			<h3>Login page</h3>
				Please provide your credential to use this website
				<br /> <span class="login-box-options"> New member? <a
					href="register.jsp" style="margin-left: 5px;">Register Here</a>
	</center>
	<form action="LoginServlet" method="post">
		<table align="center" cellpadding="10pt">
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="userName" value=""	size="30" maxlength="30" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="passWord" value=""	size="30" maxlength="30" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Login"> <input type="reset" value="Reset">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>