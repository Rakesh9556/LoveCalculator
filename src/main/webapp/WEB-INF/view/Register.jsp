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

    <form action="registerUser">
        <p align="center">Register to find your love...</p>

        <label for="fullName">
            Full Name:
            <input id="fullName" type="text" name="fullName" placeholder="Enter your full name..." >
        </label>

        <label for="userName">
            User Name:
            <input id="userName" type="text" name="userName" placeholder="Enter your user name..." >
        </label>

        <label for="password">
            Password:
            <input id="password" type="text" name="password" placeholder="Enter your password..." >
        </label>

        <label for="country">
            Country:
            <select id="country" type="text" name="country">
                <option>Select Country</option>
                <option value="india">India</option>
                <option value="usa">Usa</option>
                <option value="russia">Russia</option>
                <option value="france">France</option>
            </select>
        </label>

        <label for="hobby">
            Hobby:
            <select id="hobby" type="text" name="hobby">
                <option>Select Hobby</option>
                <option value="cricket">Cricket</option>
                <option value="reading">Reading</option>
                <option value="programming">Programming</option>
                <option value="gaming">Gaming</option>
            </select>
        </label>

        <label for="gender" class="gender-label">
            Gender:
            <div id="gender">
                <input type="radio" name="male" id="male">
                <label for="male">Male</label>

                <input type="radio" name="female" id="female">
                <label for="female">Female</label>
            </div>
        </label>

        <input id="submitBtn" type="submit" value="Register" />
    </form>
</div>
</body>
</html>

