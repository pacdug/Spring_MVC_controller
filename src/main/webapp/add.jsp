<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Word</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #f8f9fa, #e9ecef);
      color: #333;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 800px;
      margin: 50px auto;
      padding: 20px;
      background-color: #ffffff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      text-align: center;
    }

    h1 {
      color: #28a745;
    }

    .message {
      margin-top: 20px;
      padding: 15px;
      background-color: #d4edda;
      border: 1px solid #c3e6cb;
      border-radius: 4px;
      color: #155724;
      font-size: 1.2em;
    }

    .error {
      background-color: #f8d7da;
      border-color: #f5c6cb;
      color: #721c24;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Add Word to Dictionary</h1>
  <c:if test="${not empty message}">
    <div class="message ${message.contains('successfully') ? '' : 'error'}">${message}</div>
  </c:if>
  <a href="/add">Back to Search</a>
</div>
</body>
</html>

