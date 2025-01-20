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
<div class="container">
    <form action="findLove" method="get">
        <p align="center">Find your love meter..</p>

        <label for="yourName">
            Your Name:
            <input id="yourName" type="text" name="yourName" placeholder="Enter your name..." >
        </label>

        <label for="crushName">
            Crush Name:
            <input id="crushName" type="text" name="crushName" placeholder="Enter your crush name..." >
        </label>
        <input id="submitBtn" type="submit" value="Calculate" />
    </form>
</div>
</body>
</html>
