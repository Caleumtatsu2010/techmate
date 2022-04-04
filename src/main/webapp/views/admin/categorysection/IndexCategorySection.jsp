<%@ page import="com.longnh02.techmate.models.Product" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/10/2022
  Time: 12:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h2 class="pageheader-title">All Product</h2>
                    <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Product</a></li>
                                <li class="breadcrumb-item active" aria-current="page">All Product</li>
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
                        <a class="btn btn-primary float-right" href="CreateProduct" methods="get">New Section</a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                <thead>
                                <tr>
                                    <td>No. </td>
                                    <th>Category Section Id</th>
                                    <th>Category Section Name</th>
                                    <th>Tool</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listCateSection}" var="cateSec" varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${cateSec.id}</td>
                                        <td>${cateSec.name}</td>
                                        <td>
                                            <a class="list-group-item-info p-2 m-2" href="AccountDetail?id=${cateSec.id}"><i class="fas fa-info" aria-hidden="true"></i>&nbsp;Detail</a>
                                            <a class="list-group-item-action p-2 m-2" href="AccountUpdate?id=${cateSec.id}"><i class="far fa-edit" aria-hidden="true"></i>&nbsp; Edit</a>
                                            <a class="list-group-item-danger p-2 m-2" href="AccountDelete?id=${cateSec.id}"><i class="fas fa-trash" aria-hidden="true"></i>&nbsp; Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td>No. </td>
                                    <th>Category Section Id</th>
                                    <th>Category Section Name</th>
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

