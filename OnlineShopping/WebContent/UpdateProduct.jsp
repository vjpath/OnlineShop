<%@page import="com.onlineShopping.pojo.Product"%>
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
<%Product p=(Product)session.getAttribute("p"); %>
	<form action="ProductServlet" method="post">
	
		<table cellpadding="10" cellspacing="10" border="2" align="center">
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="pname" value=<%=p.getPname() %>></td>
			</tr>


			<tr>
				<td>Category</td>
				<td><select name="Category" value=<%=p.getCategory() %>>
					<option value="cloth">Clothes</option>
					<option value="cloth">Shoes</option>
					<option value="cloth">Glasses</option>
					
				</select></td>
			</tr>

			<tr>
				<td>Quantity</td>
				<td><input type="text" name="qty" value=<%=p.getQuantity() %>></td>
			</tr>

			<tr>
				<td>Price</td>
				<td><input type="text" name="price" value=<%=p.getPrice() %>></td>
			</tr>

			<tr>
				<td>Description</td>
				<td><input type="text" name="Des" value=<%=p.getDescription() %>></td>
			</tr>

			<tr>
				<td colspan="2"><center><input type="submit" value="Update"></center></td>
				
			</tr>

		</table>
	</form>
</body>
</html>