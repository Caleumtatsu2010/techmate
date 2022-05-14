<%@ page import="com.caleumtatsu2010.techmate.models.account.Account" %><%--
  Created by IntelliJ IDEA.
  User: longnh02
  Date: 2/14/2022
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <%
        String loginerror = (String) request.getAttribute("loginError");
    %>
    <style>
        html,
        body {
            height: 100%;
        }
        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
        }
    </style>
</head>

<body>
<!-- ============================================================== -->
<!-- login page  -->
<!-- ============================================================== -->
<div class="splash-container">
    <div class="card ">
        <div class="card-header text-center"><a href=""><img class="logo-img" src="assets/images/logon.PNG" alt="logo"></a><span class="splash-description"></span></div>
        <div class="card-body">
            <form action="Register" method="post">
                <div class="form-group">
                    <input name="username" class="form-control form-control-lg" id="username" type="text" placeholder="Username" autocomplete="off" minlength="" maxlength="16" required>
                </div>
                <div class="form-group">
                    <input name="password" class="form-control form-control-lg" id="password" type="password" placeholder="Password" minlength="" maxlength="16" required>
                </div>
<%--                <div class="form-group">--%>
<%--                    <input name="repassword" class="form-control form-control-lg" id="password" type="password" placeholder="Retype Password" minlength="" maxlength="16" required>--%>
<%--                </div>--%>
                <div class="form-group">
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
                    </label>
                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
            </form>
        </div>
    </div>

    <c:if test="${not empty loginerror}">
    <script>
        window.addEventListener("load",function(){
            alert("${loginError}");
        })
    </script>
    </c:if>

    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>

</html>