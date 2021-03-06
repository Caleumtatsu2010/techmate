<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:AdminLayout>
    <div class="container-fluid  dashboard-content">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Data Tables</h2>
                    <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Tables</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Data Tables</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end pageheader -->
        <!-- ============================================================== -->

        <div class="row">
            <!-- ============================================================== -->
            <!-- data table  -->
            <!-- ============================================================== -->
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card">
                    <div class="card-header">
                        <a class="btn btn-info float-right" href="CreateProductCategory" methods="get">New Category</a>

                        <h5 class="mb-0">Data Tables - Print, Excel, CSV, PDF Buttons</h5>


                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Created At</th>
                                    <th>Modified At</th>
                                    <th>Tool</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${ProdCategories}" var="prodCategory">
                                    <tr>
                                        <td>${prodCategory.id}</td>
                                        <td>${prodCategory.name}</td>
                                        <td>${prodCategory.desc}</td>
                                        <td>${prodCategory.createdAt}</td>
                                        <td>${prodCategory.modifiedAt}</td>
                                        <td>
                                            <a class="list-group-item" href="AccountDetail?id=${prodCategory.id}"><i class="fas fa-info" aria-hidden="true"></i>&nbsp; Detail</a>
                                            <a class="list-group-item" href="AccountUpdate?id=${prodCategory.id}"><i class="far fa-edit" aria-hidden="true"></i>&nbsp; Update</a>
                                            <a class="list-group-item" href="AccountDelete?id=${prodCategory.id}"><i class="fas fa-trash" aria-hidden="true"></i>&nbsp; Delete</a>

                                        </td>
                                    </tr>
                                </c:forEach>


                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Created At</th>
                                    <th>Modified At</th>
                                    <th>Tool</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end data table  -->
            <!-- ============================================================== -->
        </div>

    </div>
</t:AdminLayout>


