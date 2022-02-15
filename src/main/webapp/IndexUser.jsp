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
                        <h5 class="mb-0">Data Tables - Print, Excel, CSV, PDF Buttons</h5>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Id</th>
                                    <th>Account</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Business Phone</th>
                                    <th>Created At</th>
                                    <th>Modified At</th>
                                    <th>Image</th>
                                    <th>Tool</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${listuser}" var="user" varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${user.id}</td>
                                        <td>${user.accountId}</td>
                                        <td>${user.firstName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.email}</td>
                                        <td>${user.businessPhone}</td>
                                        <td>${user.createdAt}</td>
                                        <td>${user.modifiedAt}</td>
                                        <td><img src="data:image/jpg;base64,${user.getSeenImage()}" width="60" height="60"/></td>
                                        <td>
                                            <a class="list-group-item" href="AccountDetail?id=${user.id}"><i class="fas fa-info" aria-hidden="true"></i>&nbsp;Detail</a>
                                            <a class="list-group-item" href="AccountUpdate?id=${user.id}"><i class="far fa-edit" aria-hidden="true"></i>&nbsp; Edit</a>
                                            <a class="list-group-item" href="AccountDelete?id=${user.id}"><i class="fas fa-trash" aria-hidden="true"></i> Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>


                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>No.</th>
                                    <th>Id</th>
                                    <th>Account</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Business Phone</th>
                                    <th>Created At</th>
                                    <th>Modified At</th>
                                    <th>Image</th>
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


