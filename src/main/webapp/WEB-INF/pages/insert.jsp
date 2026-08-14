<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Search</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2);
}

.container{
    width:450px;
    background:#fff;
    padding:35px;
    border-radius:15px;
    box-shadow:0 15px 35px rgba(0,0,0,0.2);
    text-align:center;
}

h2{
    color:#333;
    margin-bottom:25px;
}

.input-group{
    margin-bottom:20px;
    text-align:left;
}

label{
    display:block;
    margin-bottom:8px;
    font-weight:600;
    color:#555;
}

input[type="text"]{
    width:100%;
    padding:12px;
    border:2px solid #ddd;
    border-radius:8px;
    font-size:15px;
    transition:0.3s;
}

input[type="text"]:focus{
    border-color:#667eea;
    outline:none;
    box-shadow:0 0 8px rgba(102,126,234,0.4);
}

.readonly-field{
    background:#f5f5f5;
    color:#666;
    font-weight:bold;
}

.btn{
    width:100%;
    padding:12px;
    border:none;
    border-radius:8px;
    background:#4f46e5;
    color:white;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover{
    background:#3730a3;
    transform:translateY(-2px);
}

</style>

</head>
<body>

<div class="container">

    <h2>${msg}</h2>

    <form action="search" method="post">

        <div class="input-group">
            <label>Search Type</label>
            <input type="text"
                   name="type"
                   value="${type}"
                   readonly="readonly"
                   class="readonly-field">
        </div>

        <div class="input-group">
            <label>Enter Value</label>
            <input type="text"
                   name="value"
                   placeholder="Type here..."
                   required>
        </div>

        <input type="submit"
               value="Search Book"
               class="btn">

    </form>

</div>

</body>
</html>