<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Records - Pagination</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
	background: linear-gradient(135deg, #667eea, #764ba2);
	min-height: 100vh;
	padding: 30px;
}

.container {
	max-width: 1200px;
	margin: auto;
	background: white;
	border-radius: 15px;
	padding: 25px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

table {
	width: 100%;
	border-collapse: collapse;
	overflow: hidden;
	border-radius: 10px;
}

thead {
	background: #4f46e5;
	color: white;
}

th, td {
	padding: 12px 15px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tbody tr:nth-child(even) {
	background: #f8f9fa;
}

tbody tr:hover {
	background: #e9ecef;
	transition: 0.3s;
}

.page-info {
	text-align: center;
	margin: 20px 0;
	color: #444;
	font-weight: bold;
	font-size: 16px;
}

.pagination {
	text-align: center;
	margin-top: 20px;
}

.pagination a {
	display: inline-block;
	text-decoration: none;
	color: white;
	background: #4f46e5;
	padding: 8px 14px;
	margin: 3px;
	border-radius: 6px;
	font-weight: bold;
	transition: 0.3s;
}

.pagination a:hover {
	background: #3730a3;
	transform: translateY(-2px);
}

.home-btn {
	display: block;
	width: 130px;
	margin: 25px auto 0;
	text-align: center;
	text-decoration: none;
	background: #28a745;
	color: white;
	padding: 10px 15px;
	border-radius: 8px;
	font-weight: bold;
	transition: 0.3s;
}

.home-btn:hover {
	background: #218838;
}

.no-record {
	text-align: center;
	color: red;
	font-size: 28px;
	margin-top: 40px;
	font-weight: bold;
}
</style>

</head>
<body>

	<div class="container">

		<c:choose>

			<c:when test="${!empty data.content}">

				<h1>📚 Book Records</h1>

				<div class="page-info">
					Page ${data.number+1} of ${data.totalPages} <br>
					<br> Total Records : ${data.totalElements}
				</div>

				<table>

					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Author</th>
							<th>Category</th>
							<th>Price</th>
							<th>Publisher</th>
							<th>Published Date</th>
							<th>Stock</th>
						</tr>
					</thead>

					<tbody>

						<c:forEach var="book" items="${data.content}">

							<tr>
								<td>${book.id}</td>
								<td>${book.title}</td>
								<td>${book.author}</td>
								<td>${book.category}</td>
								<td>₹ ${book.price}</td>
								<td>${book.publisher}</td>
								<td>${book.published_date}</td>
								<td>${book.stock_quantity}</td>
							</tr>

						</c:forEach>

					</tbody>

				</table>

				<div class="pagination">

					

					<c:if test="${!data.isFirst()}">
						<a href="show-pageable?page=0"> ⏮ First </a>
					</c:if>
					
					<c:if test="${data.hasPrevious()}">
						<a href="show-pageable?page=${data.number-1}"> ⬅ Previous </a>
					</c:if>

					<c:forEach var="i" begin="1" end="${data.totalPages}">
						<c:if test="${data.number != i-1}">
							<a href="show-pageable?page=${i-1}"> ${i} </a>
						</c:if>
					</c:forEach>

					<c:if test="${data.hasNext()}">
						<a href="show-pageable?page=${data.number+1}"> Next ➡ </a>
					</c:if>

					<c:if test="${!data.isLast()}">
						<a href="show-pageable?page=${data.totalPages-1}"> Last ⏭ </a>
					</c:if>

				</div>

			</c:when>

			<c:otherwise>

				<div class="no-record">❌ No Records Found</div>

			</c:otherwise>

		</c:choose>

		<a href="./" class="home-btn"> 🏠 Home </a>

	</div>

</body>
</html>