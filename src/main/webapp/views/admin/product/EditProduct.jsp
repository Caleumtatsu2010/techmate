<%--
  Created by IntelliJ IDEA.
  User: longnh02
  Date: 2/8/2022
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <h5 class="card-header">Edit Product</h5>
                    <div class="card-body">
                        <form id="validationform" method="post" action="EditProduct" data-parsley-validate="" novalidate="" enctype="multipart/form-data">
                            <input type="hidden" name="id" value="${Product.id}">
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Product Name</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input  name="name" type="text" required="" placeholder="Product name here!" class="form-control" value="${Product.name}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Description</label>
                                <div class="col-12 col-sm-8 col-lg-6">

                                    <textarea name="desc" type="text" required placeholder="Product description here!" class="form-control" rows="3" >${Product.desc}</textarea>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Product Sku</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="sku" type="text" required="" placeholder="Product sku here!" class="form-control" value="${Product.sku}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Price</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="price"  type="number" required="" placeholder="Enter only digits" class="form-control" value="${Product.price}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Currency</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <select name="unitprice" class="form-control">
                                        <option  value="${Product.currency}">${Product.currency}</option>
                                        <option  value="VND">VND</option>
                                        <option  value="JPY">JPY</option>
                                        <option  value="EUR">EUR</option>
                                        <option  value="AUD">AUD</option>
                                        <option  value="CAD">CAD</option>
                                        <option  value="USD">USD</option>
                                        <option  value="KRW">KRW</option>
                                        <option  value="GBP">GBP</option>
                                        <option  value="RUB">RUB</option>
                                        <option  value="HKD">HKD</option>
                                    </select>
<%--                                    <input name="unitprice" data-parsley-type="digits" required="" placeholder="Enter unit price" class="form-control" value="">--%>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Product Color</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="color" type="text" required="" placeholder="Chose product color!" class="form-control" value="${Product.color}">
                                </div>
                            </div>



                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Category</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <select name="categoryid" class="form-control">
                                        <c:forEach items="${listcategory}" var="category">
                                            <c:choose>
                                                <c:when test="${category.id == Product.categoryId}">
                                                    <option selected value="${category.id}">${category.name}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${category.id}">${category.name}</option>
                                                </c:otherwise>
                                            </c:choose>

                                        </c:forEach>
                                    </select>

                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Discount</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <select name="discountid" class="form-control">
                                        <c:forEach items="${listdiscount}" var="discount">
                                            <c:choose>
                                                <c:when test="${discount.id == Product.discountId}">
                                                    <option selected value="${discount.id}">${discount.name}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${discount.id}">${discount.name}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Quantity</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="quantity" data-parsley-type="digits" type="number" required="" placeholder="Enter only digits" class="form-control" value="${Product.quantity}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Supplier</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <select name="supplierid" class="form-control">
                                        <c:forEach items="${listsupplier}" var="supply">
                                            <c:choose>
                                                <c:when test="${supply.id == Product.supplierId}">
                                                    <option selected value="${supply.id}">${supply.name}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${supply.id}">${supply.name}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Short Description</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <textarea name="productshortdesc" type="text" required placeholder="Product short description here!" class="form-control" rows="5" >${Product.productShortDesc}</textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Detail</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <textarea name="detail" type="text" required placeholder="Product detail here!" class="form-control" rows="5">${Product.detail}</textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right">Image</label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <input name="image" accept="image/*" data-parsley-type="image" type="file" id="file"   placeholder="" class="form-control border-light" onchange="loadFile(event)" >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-12 col-sm-3 col-form-label text-sm-right"></label>
                                <div class="col-12 col-sm-8 col-lg-6">
                                    <img class="rounded" id="output" width="200" />
                                </div>
                            </div>


                            <script>
                                var loadFile = function(event) {
                                    var image = document.getElementById('output');
                                    image.src = URL.createObjectURL(event.target.files[0]);
                                };
                            </script>


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