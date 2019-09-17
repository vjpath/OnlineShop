<%@page import="com.onlineShopping.pojo.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%List<Product> lp=(List<Product>)session.getAttribute("ProductList"); %>

<table cellpadding="10" cellspacing="10" border="2" align="center">
<tr>
<th>Product ID</th><th>ProductName</th><th>Category</th><th>Quantity</th><th>Price</th><th>Description</th><th colspan="2">Action</th>
</tr>
<%for(Product p:lp){ %>
<tr>
<td><%=p.getPid() %></td>
<td><%=p.getPname() %></td>
<td><%=p.getCategory() %></td>
<td><%=p.getQuantity() %></td>
<td><%=p.getPrice() %></td>
<td><%=p.getDescription() %></td>

<td><a href="ProductServlet?action=edit&pid=<%=p.getPid() %>">Edit</a></td>
<td><a href="ProductServlet?action=delete&pid=<%=p.getPid()%>">Delete</a></td>
</tr>
<%} %>
</table>

</body>
</html>