<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Books</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body{
    background:linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
    padding:30px;
}

.container{
    background:white;
    border-radius:15px;
    padding:25px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.search-btn{
    display:inline-block;
    margin-top:20px;
    margin-right:10px;
    padding:12px 22px;
    background:#4f46e5;
    color:white;
    text-decoration:none;
    border-radius:8px;
    font-weight:bold;
    transition:all 0.3s ease;
    box-shadow:0 4px 10px rgba(79,70,229,0.3);
}

.search-btn:hover{
    background:#3730a3;
    transform:translateY(-3px);
    box-shadow:0 6px 15px rgba(79,70,229,0.5);
}

h1{
    text-align:center;
    color:#333;
    margin-bottom:25px;
}

table{
    width:100%;
    border-collapse:collapse;
    overflow:hidden;
    border-radius:10px;
}

thead{
    background:#4f46e5;
    color:white;
}

th,td{
    padding:12px 15px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tbody tr:nth-child(even){
    background:#f8f9fa;
}

tbody tr:hover{
    background:#e9ecef;
    transition:0.3s;
}

.edit-btn,
.delete-btn{
    text-decoration:none;
    color:white;
    padding:8px 15px;
    border-radius:5px;
    font-size:14px;
    font-weight:bold;
}

.edit-btn{
    background:#ffc107;
}

.edit-btn:hover{
    background:#e0a800;
}

.delete-btn{
    background:#dc3545;
}

.delete-btn:hover{
    background:#c82333;
}

.add-btn{
    display:inline-block;
    margin-bottom:20px;
    padding:10px 20px;
    background:#28a745;
    color:white;
    text-decoration:none;
    border-radius:6px;
    font-weight:bold;
}

.add-btn:hover{
    background:#218838;
}

</style>

</head>
<body>

<div class="container">

    <h1>📚 All Books</h1>

    <a href="book-form" class="add-btn">
        + Add New Book
    </a>

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
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>

        <c:forEach var="book" items="${books}">
            <tr>

                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.category}</td>
                <td>₹ ${book.price}</td>
                <td>${book.publisher}</td>
                <td>${book.published_date}</td>
                <td>${book.stock_quantity}</td>

                <td>
                    <a href="update?id=${book.id}" class="edit-btn">
                        Edit
                    </a>

                    <a href="delete?id=${book.id}" class="delete-btn"
                       onclick="return confirm('Are you sure you want to delete this book?')">
                        Delete
                    </a>
                </td>

            </tr>
        </c:forEach>

        </tbody>

    </table>

</div>
 <div style="text-align:center; margin-top:25px;">

    <a href="title" class="search-btn">
        🔍 Search By Title
    </a>

    <a href="author" class="search-btn">
        ✍️ Search By Author
    </a>

    <a href="category" class="search-btn">
        📂 Search By Category
    </a>

</div>
</body>
</html>