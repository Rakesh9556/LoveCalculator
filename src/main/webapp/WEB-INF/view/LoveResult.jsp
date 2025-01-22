<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Love Result</title>
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

        .main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin:auto;
            width: 40%;
            height: 45%;
            border: 1px solid salmon;
            background-blend-mode: luminosity;
            border-top-right-radius: 100px;
            border-bottom-left-radius: 100px;
            background-color: lightpink;
        }

        h2 {
            margin-top: 25px;
            font-size: xx-large;
            color: brown;
            font-weight: 600;
            height: 20%;
        }

        .result-container {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: flex-start;
            margin:auto;
            width: 100%;
            height: 100%;
            background-blend-mode: luminosity;
        }

        p {
            font-size: xx-large;
            color: brown;
            font-weight: 600;
            text-align: center;
        }

        .content-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 30%;
            height: 70%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            outline: none;
            border-radius: 10px;
            font-size: xx-large;
            font-weight: normal;
            color: darkred;
            background-color: bisque;
            background-blend-mode: luminosity;
        }

        img {
            margin: auto 0;
            padding: 0;
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

<div class="main-container">
    <h2 align="center">Your love meter result..</h2>
    <div class="result-container">
            <span class="content-container">
                <p>${user.userName}</p>
                <p>${user.crushName}</p>
            </span>

        <img width="120" height="120" src="https://img.icons8.com/plasticine/100/filled-like.png" alt="filled-like"/>

        <span class="content-container">
                <p>Result</p>
            </span>
    </div>
</div>
</body>
</html>
