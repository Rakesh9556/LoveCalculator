<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Registration Success</title>
    <style>

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100vw;
            height: 100vh;
            background-color: rgb(254, 163, 178);
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        h1 {
            font-size: 56px;
            color: brown;
        }

        .main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: auto;
            width: 40%;
            height: fit-content;
            border: 1px solid salmon;
            background-blend-mode: luminosity;
            border-top-right-radius: 100px;
            border-bottom-left-radius: 150px;
            background-color: lightpink;

        }

        form {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: auto;
        }

        p {
            text-align: right;
            font-size: xx-large;
            color: brown;
            font-weight: 600;
        }

        a {
            text-decoration: none;
            font-size: x-large;
            color: blueviolet;
        }

        form label {
            font-size: x-large;
            font-weight: normal;
            color: darkred;
        }

        label input[type = "text"], select {
            width: fit-content;
            height: fit-content;
            padding: 15px;
            margin: 10px 0;
            font-size: large;
            border: none;
            outline: none;
            border-radius: 10px;
            background-color: bisque;

        }

        .gender-label {
            display: flex;
            margin-top: 5px;
        }

        #submitBtn {
            margin: 50px 0;
            padding: 10px 20px;
            border-radius: 10px;
            background-color: bisque;
            font-size: xx-large;
            font-weight: 500;
            color: darkred;
            outline: none;
            border: none;
            cursor: pointer;
        }

    </style>
</head>
<body>
<h1 align="center">Love Calculator</h1>
<a href="${pageContext.request.contextPath}/love-calculator.com/">Login</a>
<div class="main-container">
    <p align="center">Registration Info</p>

    <label for="fullName">Full Name:</label>
    <p id="fullName"> ${userInfo.fullName} </p>

    <label for="userName">Username:</label>
    <p id="userName"> ${userInfo.userName} </p>

    <label for="password">Password:</label>
    <p id="password"> ${userInfo.password} </p>

    <label for="hobbies">Hobbies:</label>
    <p id="hobbies">
        <c:forEach var="hobby" items="${userInfo.hobbies}">
            ${hobby},
        </c:forEach>
    </p>


    <label for="gender">Gender:</label>
    <p id="gender"> ${userInfo.gender} </p>
</div>
</body>
</html>

