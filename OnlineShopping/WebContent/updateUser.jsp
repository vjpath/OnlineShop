<%@page import="com.onlineShopping.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%User u=(User)session.getAttribute("u"); %>
	<form action="UserServlet" method="post">
	<input type="hidden" name="action" value="updateUser">
		<table cellpadding="10" cellspacing="10" border="2" align="center">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%=u.getName()%>"></td>
			</tr>


			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact" value="<%=u.getContact()%>"></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=u.getEmail()%>"></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="text" name="pass" value="<%=u.getPass()%>"></td>
			</tr>

			<tr>
				<td><input type="submit" value="update"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>

		</table>
	</form>
</body>
</html>