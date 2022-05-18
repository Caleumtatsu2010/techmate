<%--
  Created by IntelliJ IDEA.
  User: longnh02
  Date: 2/8/2022
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.caleumtatsu2010.techmate.models.account.Account" %>
<%@ page import="com.caleumtatsu2010.techmate.models.account.AccountType" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String active, deactive, pending;
    Account account = (Account) request.getAttribute("Account");
%>

<t:AdminLayout>
    <div class="container-fluid  dashboard-content">

        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">New Product </h2>
                        <%--                    <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>--%>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Product</a></li>
                                <li class="breadcrumb-item active" aria-current="page">New Product</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- ============================================================== -->
            <!-- valifation types -->
            <!-- ============================================================== -->
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <h5 class="card-header">Creat New Product</h5>
                    <div class="card-body">
                        <form id="validationform" method="post" action="EditAccount" data-parsley-validate="" novalidate="" enctype="multipart/form-data">
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Account Id</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="id" data-parsley-type="text" type="text" value="${Account.id}" required placeholder="Enter only digits" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Account Type</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                <select name="accountType" class="form-control">
                                    <c:forEach items="${ListAccountType}" var="list" varStatus="loop">
                                        <c:choose>
                                            <c:when test="${list.id == Account.accountTypeId}">
                                                <option selected value="${list.id}">${list.accountType}</option>
                                            </c:when>
                                        <c:otherwise>
                                                <option value="${list.id}">${list.accountType}</option>
                                        </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                                    </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Status</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                <select name="accountStatus" class="form-control">
                                        <option selected value="active">active</option>
                                        <option value="deactive">deactive</option>
                                        <option value="deactive">pending</option>
                                </select>
                                </div>
                            </div>

                            <div class="form-group row text-right">
                                <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                    <button type="submit" class="btn btn-space btn-primary" >submit</button>
                                    <a class="btn btn-space btn-secondary" href="IndexProduct">Cancel</a>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end valifation types -->
            <!-- ============================================================== -->
        </div>

    </div>
</t:AdminLayout>




<!-- ============================================================== -->
<!-- end main wrapper -->
<!-- ============================================================== -->
<!-- Optional JavaScript -->
<script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
<script src="assets/vendor/parsley/parsley.js"></script>
<script src="assets/libs/js/main-js.js"></script>
<script>
    $('#form').parsley();
</script>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
<!-- preview image -->
<script>
    var loadFile = function(event) {
        var image = document.getElementById('output');
        image.src = URL.createObjectURL(event.target.files[0]);
    };
</script>
</body>

</html>