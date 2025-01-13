<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dictionary</title>
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
            color: #007bff;
        }

        form {
            margin: 20px 0;
        }

        label {
            font-weight: bold;
        }

        input[type="text"] {
            width: 70%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 1em;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }

        button:hover {
            background-color: #0056b3;
        }

        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-radius: 4px;
            color: #495057;
            font-size: 1.2em;
        }

        .not-found {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>English - Vietnamese Dictionary</h1>
    <form action="/search" method="get">
        <label for="word">Enter a word:</label>
        <input type="text" id="word" name="word">
        <button type="submit">Search</button>
    </form>
    <div class="result">
        <h2>Result:</h2>
        <p class="${not empty result ? '' : 'not-found'}">${result}</p>
    </div>
</div>
</body>
</html>
