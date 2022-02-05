<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section>

    <!--for demo wrap-->
    <h1>Manager Account</h1>
    <div class="tbl-header">
        <table border="1" cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>Account ID</th>
                <th>Account UserName</th>
                <th>Account Password</th>
                <th>Account Type</th>
                <th>Account Status</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listAccount}" var="o" >
                <tr>
                    <td>${o.id}</td>
                    <td>${o.username}</td>
                    <td>${o.password}</td>
                    <td>${o.accountTyped}</td>
                    <td>${o.accountStatus}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</section>

</body>
</html>
