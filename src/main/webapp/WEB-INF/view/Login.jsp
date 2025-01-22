<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Love Calculator</title>
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
      justify-content: center;
      align-items: center;
      margin:auto;
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
      margin:auto;
    }

    .caption-container {
      display: flex;
      flex-direction: row;
      align-items: center;
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
      font-size:x-large;
      font-weight: normal;
      color: darkred;
    }

    label input[type = "text"] {
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
<a href="${pageContext.request.contextPath}/love-calculator.com/register">Register</a>
<div class="main-container">

  <form:form action="findLove" modelAttribute="userInfo">
    <p align="center">Login</p>

    <label for="userName">
      User Name:
      <form:input id="userName"  path="userName" placeholder="Enter your user name..." />
    </label>

    <label for="password">
      Password:
      <form:input id="password" path="password" placeholder="Enter your password..." />
    </label>

    <input id="submitBtn" type="button" value="Login" />
  </form:form>
</div>
</body>
</html>

