<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Book Store</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI, Tahoma, Geneva, Verdana, sans-serif;
}

body{
    background:linear-gradient(135deg,#667eea,#764ba2);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    background:white;
    padding:40px;
    width:450px;
    text-align:center;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

h1{
    color:#333;
    margin-bottom:30px;
}

.btn{
    display:inline-block;
    text-decoration:none;
    color:white;
    padding:12px 25px;
    margin:10px;
    border-radius:8px;
    font-weight:bold;
    transition:0.3s;
}

.show-btn{
    background:#28a745;
}

.show-btn:hover{
    background:#218838;
    transform:translateY(-2px);
}

.add-btn{
    background:#007bff;
}

.add-btn:hover{
    background:#0056b3;
    transform:translateY(-2px);
}

.message{
    margin-top:25px;
    padding:12px;
    background:#d4edda;
    color:#155724;
    border:1px solid #c3e6cb;
    border-radius:8px;
    font-weight:bold;
}

</style>

</head>
<body>

<div class="container">

    <h1>📚 Online Book Store</h1>

    <a href="show-book" class="btn show-btn">
        Show All Books
    </a>

    <a href="book-form" class="btn add-btn">
        Add Book
    </a>
    
    <a href="show-pageable" class="btn show-btn">
        Show Books By Paging
    </a>
    
    
    <c:if test="${not empty msg}">
        <div class="message">
            ${msg}
        </div>
    </c:if>

</div>

</body>
</html>