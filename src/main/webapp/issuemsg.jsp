<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SevaNet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous"><link rel="icon" type="image/png" href="fevi.png">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #87CEFA, #4682B4);
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .message-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 30px;
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        .message-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            font-weight: bold;
            color: #fff;
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .message-container a:hover {
            background-color: #0056b3;
        }

        .message {
            font-size: 18px;
            font-weight: bold;
            color: #4682B4;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <p class="message">${message}</p>
        <a href="addissue">Back</a>
    </div>
</body>
</html>
