<%@page import="com.onlineShopping.pojo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List</title>
</head>
<body>
<%List<User> al=(List<User>)session.getAttribute("ulist"); %>


<table cellpadding="10" cellspacing="10" border="2" align="center">

<tr><th>Name</th><th>Contact</th><th>Email</th><th>Password</th><th colspan="2">Action</th></tr>
<%for(User u:al){ %>
<tr>
<td><%=u.getName() %></td>
<td><%=u.getContact() %></td>
<td><%=u.getEmail() %></td>
<td><%=u.getPass() %></td>
<td><a href="UserServlet?action=edit&email=<%=u.getEmail()%>">Edit</a></td>
<td><a href="UserServlet?action=delete&email=<%=u.getEmail()%>">Delete</a></td>
</tr>

<%} %>
</table>

</body>
</html>