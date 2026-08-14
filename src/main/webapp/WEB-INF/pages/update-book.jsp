<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

form {
	background-color: white;
	padding: 30px;
	width: 400px;
	border-radius: 10px;
	box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.15);
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	background-color: #28a745;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #218838;
}
</style>

</head>
<body>

	<form action="update-book" method="post">

		<h2>Update Book</h2>

			 Book Id: <input type="number" name="id" value="${book.id}" readonly="readonly"> <br>
		<br> Title: <input type="text" name="title" value="${book.title}">
		<br>
		<br> Author: <input type="text" name="author" value="${book.author}">
		<br>
		<br> Category: <input type="text" name="category"
			value="${book.category}"> <br>
		<br> Price: <input type="number" name="price"
			value="${book.price}"> <br>
		<br> Publisher: <input type="text" name="publisher"
			value="${book.publisher}"> <br>
		<br> Published Date: <input type="date" name="published_date"
			value="${book.published_date}"> <br>
		<br> Stock Quantity: <input type="number" name="stock_quantity"
			value="${book.stock_quantity}"> <br>
		<br> <input type="submit" value="Update Book">

	</form>

</body>
</html>