<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register The Book</title>

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
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    background:white;
    width:500px;
    padding:35px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

h1{
    text-align:center;
    color:#333;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:15px;
}

label{
    display:block;
    font-weight:600;
    margin-bottom:6px;
    color:#555;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:14px;
}

input:focus{
    outline:none;
    border-color:#667eea;
    box-shadow:0 0 5px rgba(102,126,234,0.5);
}

.btn-container{
    text-align:center;
    margin-top:20px;
}

.btn{
    padding:12px 25px;
    border:none;
    border-radius:8px;
    color:white;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
    margin:5px;
}

.submit-btn{
    background:#28a745;
}

.submit-btn:hover{
    background:#218838;
    transform:translateY(-2px);
}

.reset-btn{
    background:#dc3545;
}

.reset-btn:hover{
    background:#c82333;
    transform:translateY(-2px);
}

</style>

</head>
<body>

<div class="container">

    <h1>📚 Book Addition Form</h1>

    <form action="book-form" method="post">

        <div class="form-group">
            <label>Book Title</label>
            <input type="text" name="title" required>
        </div>

        <div class="form-group">
            <label>Author Name</label>
            <input type="text" name="author" required>
        </div>

        <div class="form-group">
            <label>Category</label>
            <input type="text" name="category" required>
        </div>

        <div class="form-group">
            <label>Price</label>
            <input type="number" name="price" required>
        </div>

        <div class="form-group">
            <label>Publisher</label>
            <input type="text" name="publisher" required>
        </div>

        <div class="form-group">
            <label>Published Date</label>
            <input type="date" name="published_date">
        </div>

        <div class="form-group">
            <label>Stock Quantity</label>
            <input type="number" name="stock_quantity">
        </div>

        <div class="btn-container">
            <input type="submit" value="Add Book" class="btn submit-btn">
            <input type="reset" value="Clear" class="btn reset-btn">
        </div>

    </form>

</div>

</body>
</html>