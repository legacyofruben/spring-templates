<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>


    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
    <script src="https://apis.google.com/js/api:client.js"></script>
    <meta name="google-signin-client_id"
          content="1086133794456-0umqledkrncqpd09ttdqvboblp56m952.apps.googleusercontent.com">
</head>
<%--<body>--%>
<%--<h1>Hello ${Name}</h1>--%>
<%--<div class="container">--%>

<%--</div>--%>
<%--</body>--%>
<body bgcolor="#D8D8D8">


<div align="center"><h1>Login Page</h1></div>

<div align="center">
    <form name="formLogin" action="index"  method="post">
        <label>Username</label>
        <input type="text" name="username" ><br>
        <label>Password</label>
        <input type="password" name="password" ><br>
        <input type="submit" value="Submit">
    </form>
</div>

<div id="my-signin2" align="center"></div>
<script>
    function onSuccess(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail());
        //$("#name").val( profile.getName());
       // $("#image").val( profile.getImageUrl());
        //$("#formLogin").submit();
        window.location.href = "/index";
    }
    function onFailure(error) {
        alert(error);
    }
    function renderButton() {
        gapi.signin2.render('my-signin2', {
            'scope': 'https://www.googleapis.com/auth/plus.login',
            'width': 220,
            'height': 50,
            'longtitle': true,
            'theme': 'dark',
            'onsuccess': onSuccess,
            'onfailure': onFailure
        });
    }

</script>

<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
</body>
</html>
