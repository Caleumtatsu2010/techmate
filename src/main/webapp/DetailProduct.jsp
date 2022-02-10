<%--
  Created by IntelliJ IDEA.
  User: longnh02
  Date: 2/10/2022
  Time: 9:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
    <t:AdminLayout>
        <div class="container-fluid dashboard-content ">
            <!-- ============================================================== -->
            <!-- pageheader  -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="page-header">
                        <h2 class="pageheader-title">E-commerce Product Single </h2>
                        <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                        <div class="page-breadcrumb">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">E-coommerce</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">E-Commerce Product Single</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end pageheader  -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 pr-xl-0 pr-lg-0 pr-md-0  m-b-30">
                            <div class="product-slider">
                                <div id="productslider-1" class="product-carousel carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block" src="" alt="First slide">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block" src="" alt="Second slide">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block" src="" alt="Third slide">
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 pl-xl-0 pl-lg-0 pl-md-0 border-left m-b-30">
                            <div class="product-details">
                                <div class="border-bottom pb-3 mb-3">
                                    <h2 class="mb-3">T-Shirt Product Title</h2>

                                    <h3 class="mb-0 text-primary">$49.00</h3>
                                </div>
                                <div class="product-colors border-bottom">
                                    <h4>Colors</h4>
                                    <input type="radio" class="radio" id="radio-1" name="group" />
                                    <label for="radio-1"></label>
                                    <input type="radio" class="radio" id="radio-2" name="group" />
                                    <label for="radio-2"></label>
                                    <input type="radio" class="radio" id="radio-3" name="group" />
                                    <label for="radio-3"></label>
                                </div>
                                <div class="product-size border-bottom">
                                    <h4>Size</h4>
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-outline-light">SM</button>
                                        <button type="button" class="btn btn-outline-light">L</button>
                                        <button type="button" class="btn btn-outline-light">XL</button>
                                        <button type="button" class="btn btn-outline-light">XXl</button>
                                    </div>
                                    <div class="product-qty">
                                        <h4>Quantity</h4>
                                        <div class="quantity">
                                            <input type="number" min="1" max="9" step="1" value="1">
                                        </div>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <h4 class="mb-1">Descriptions</h4>
                                    <p>Praesent et cursus quam. Etiam vulputate est et metus pellentesque iaculis. Suspendisse nec urna augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>
                                    <a href="#" class="btn btn-primary btn-block btn-lg">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 m-b-60">
                            <div class="simple-card">
                                <ul class="nav nav-tabs" id="myTab5" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active border-left-0" id="product-tab-1" data-toggle="tab" href="#tab-1" role="tab" aria-controls="product-tab-1" aria-selected="true">Detail Description</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="product-tab-2" data-toggle="tab" href="#tab-2" role="tab" aria-controls="product-tab-2" aria-selected="false">Reviews</a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </t:AdminLayout>