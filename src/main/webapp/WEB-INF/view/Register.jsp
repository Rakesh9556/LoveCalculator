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

    <form:form action="register-success" method="get" modelAttribute="userRegDto">
        <p align="center">Register to find your love...</p>

        <label for="fullName">
            Full Name:
            <form:input id="fullName" path="fullName" placeholder="Enter your full name..." />
        </label>

        <label for="userName">
            User Name:
            <form:input id="userName" path="userName" placeholder="Enter your user name..." />
        </label>

        <label for="password">
            Password:
            <form:input id="password" path="password" placeholder="Enter your password..." />
        </label>

        <div style="display: flex; align-items: center;">
            <label for="country">Country:</label>
            <form:select id="country" path="country" name="country">
                <form:option value="india" label="India"/>
                <form:option value="usa" label="Usa"/>
                <form:option value="russia" label="Russia"/>
                <form:option value="france" label="France"/>
            </form:select>
        </div>

        <div style="display: flex; align-items: center; margin-bottom: 10px;">
            <label for="hobbies" style="margin-right: 10px;">Hobby:</label>
            <div id="hobbies" style="display: flex; gap: 15px;">
                <label>
                    <form:checkbox path="hobbies" value="cricket" /> Cricket
                </label>
                <label>
                    <form:checkbox path="hobbies" value="reading" /> Reading
                </label>
                <label>
                    <form:checkbox path="hobbies" value="programming" /> Programming
                </label>
                <label>
                    <form:checkbox path="hobbies" value="gaming" /> Gaming
                </label>
            </div>
        </div>

        <label for="gender" class="gender-label">
            Gender:
            <div id="gender">
                <form:radiobutton path="gender" value="male" id="male"/>
                <label for="male">Male</label>

                <form:radiobutton path="gender" value="female" id="female" />
                <label for="female">Female</label>
            </div>
        </label>

        <input id="submitBtn" type="submit" value="Register" />
    </form:form>
</div>
</body>
</html>

