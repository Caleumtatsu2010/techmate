<%--
  Created by IntelliJ IDEA.
  User: longnh02
  Date: 2/8/2022
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:AdminLayout>
    <div class="container-fluid  dashboard-content">

        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Form Validations </h2>
                    <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Form Validations</li>
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
                    <h5 class="card-header">Creat New User</h5>
                    <div class="card-body">
                        <form id="validationform" method="post" action="CreateUser" data-parsley-validate="" novalidate="" enctype="multipart/form-data">
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">First Name</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input  name="first_name" type="text" required="" placeholder="Your first name here!" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Last Name</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="last_name" type="text" required="" placeholder="Your last name here!" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Mobile Phone</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="mobile_phone" data-parsley-type="digits" type="text" required="" placeholder="Enter only digits" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Citizen ID</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="citizen_id" data-parsley-type="digits" type="text" required="" placeholder="Enter only digits" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">E-Mail</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="email" type="email" required="" data-parsley-type="email" placeholder="Enter a valid e-mail" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Business Phone</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="business_phone" data-parsley-type="digits" type="text" placeholder="Enter only digits" class="form-control">
                                </div>
                            </div>


<%--                            <div class="custom-file mb-3">--%>
<%--                                <input name="image" type="file" class="custom-file-input" id="customFile" >--%>
<%--                                <label class="custom-file-label" for="customFile">File Input</label>--%>
<%--                            </div>--%>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Image</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="image" data-parsley-type="image" type="file" required="" placeholder="" class="form-control border-light ">
                                </div>
                            </div>

                            <div class="form-group row text-right">
                                <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                    <button type="submit" class="btn btn-space btn-primary" >submit</button>
                                    <button class="btn btn-space btn-secondary">Cancel</button>
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
<script src="../../../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="../../../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="../../../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
<script src="../../../assets/vendor/parsley/parsley.js"></script>
<script src="../../../assets/libs/js/main-js.js"></script>
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
</body>

</html>