<%--
  Created by IntelliJ IDEA.
  User: Ruben Cerpa
  Date: 5/05/16
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Page</title>
    <script>
        function signOut() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                console.log('User signed out.');
            });
        }
    </script>
</head>
<body>
<h1 align="center">Main Page</h1>

<table style="width:25%" border="2" align="center">
    <tr bgcolor="silver">
        <th>Name</th>
        <th>Picture</th>
        <th>Log out</th>

    </tr>
    <tr>
        <td>${Name}</td>
        <td align="center"><img src="${Image}"  style="width:50px;height:50px;"></td>
        <td><a href="#" onclick="signOut();">Sign out</a></td>
    </tr>
</table>

<table style="width:50%" border="2" align="center">
    <tr bgcolor="silver">
        <th>Name</th>
        <th>Smith</th>
        <th>50</th>
    </tr>
    <tr>
        <td>Eve</td>
        <td>Jackson</td>
        <td>94</td>
    </tr>
</table>

</body>
</html>
