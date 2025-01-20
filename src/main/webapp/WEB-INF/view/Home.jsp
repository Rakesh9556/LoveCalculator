<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
            margin-top: 10px;
            padding-top: 10px;
            font-size: 56px;
            color: brown;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin:auto;
            width: 40%;
            height: 45%;
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

        p {
            padding: 20px 0;
            font-size: xx-large;
            color: brown;
            font-weight: 600;
        }

        label {
            font-size:x-large;
            font-weight: normal;
            color: darkred;
        }

        label input[type = "text"] {
            width: fit-content;
            height: fit-content;
            padding: 15px;
            margin: 10px 0;
            font-size: larger;
            border: none;
            outline: none;
            border-radius: 10px;
            background-color: bisque;
            color: darkred;
            font-weight: bold;
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
<div class="container">

    <%--    This form is binded with the user model--%>
    <%--    In order to fetch properties from the modelAttribute we need to use form tag in property--%>
    <form:form action="findLove" method="get" modelAttribute="user">
        <p align="center">Find your love meter..</p>

        <label for="yourName">
            Your Name:
            <%--   fetching property--%>
            <%--   Instead of name use path to fetch property--%>
            <form:input id="yourName" path="yourName" placeholder="Enter your name..." />
        </label>

        <label for="crushName">
            Crush Name:
            <form:input id="crushName" path="crushName" placeholder="Enter your crush name..." />
        </label>
        <input id="submitBtn" type="submit" value="Calculate" />
    </form:form>
</div>
</body>
</html>
