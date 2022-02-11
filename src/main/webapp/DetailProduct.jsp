<%--
  Created by IntelliJ IDEA.
  User: longnh02
  Date: 2/10/2022
  Time: 9:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:AdminLayout>
    <title>Detail</title>
    <div class="container-fluid dashboard-content ">
    <!-- ============================================================== -->
    <!-- pageheader  -->
    <!-- ============================================================== -->
    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="page-header">
                <h2 class="pageheader-title">Detail Product </h2>
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
                        <img class="d-block" src="data:image/jpg;base64,${Product.getInputStreamImage()}" alt="slide" width="285" height="313">
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
        <h2 class="mb-3">${Product.name}</h2>

        <h3 class="mb-0 text-primary">${Product.price} ${Product.unitPrice}</h3>
    </div>
    <div class="product-colors border-bottom">
    <h4>Colors</h4>

    <c:forEach items="ListColors" var="color">
<%--        <c:if test = "${color > "red"}">--%>
<%--        <p>color:  <c:out value = "${salary}"/><p>--%>
<%--        </c:if>--%>
        <p>${color}</p>
    </c:forEach>



<%--<label for="radio-1"></label>--%>

<%--<label for="radio-2"></label>--%>

<%--<label for="radio-3"></label>--%>
</div>
<div class="product-size border-bottom">
    <h4>Size</h4>
    <div class="btn-group" role="group" aria-label="First group">
        <p class="p-3 mr-3">SM</p>
        <p class="p-3 mr-3">SM</p>
        <p class="p-3 mr-3">SM</p>
        <p class="p-3 mr-3">SM</p>

    </div>
    <div class="product-qty">
        <h4>Quantity</h4>
        <div class="quantity">
            <p>${Quantity}</p>
        </div>
    </div>
</div>
        <div class="product-size border-bottom">
            <h4>Discount</h4>
            <div class="btn-group" role="group" aria-label="First group">
                <p class="">${Discount}</p>
            </div>
            <div class="product-qty">
                <h4>Category</h4>
                <div class="quantity">
                    <p>${CategoryName}</p>
                </div>
            </div>
        </div>
<div class="product-description">
    <h4 class="mb-1">Descriptions</h4>
    <div  style="text-wrap: normal">${Product.desc}</div>
    <a href="#" class="btn btn-primary btn-lg">Edit</a>
    <a href="#" class="btn btn-danger btn-lg">Cancel</a>
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
        <div class="tab-content" id="myTabContent5">
            <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="product-tab-1">
<%--                <p>Praesent et cursus quam. Etiam vulputate est et metus pellentesque iaculis. Suspendisse nec urna augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubiliaurae.</p>--%>
<%--                <p>Nam condimentum erat aliquet rutrum fringilla. Suspendisse potenti. Vestibulum placerat elementum sollicitudin. Aliquam consequat molestie tortor, et dignissim quam blandit nec. Donec tincidunt dui libero, ac convallis urna dapibus eu. Praesent volutpat mi eget diam efficitur, a mollis quam ultricies. Morbi eu turpis odio.</p>--%>
<%--                <ul class="list-unstyled arrow">--%>
<%--                    <li>--%>
<%--                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>--%>
<%--                    <li>Donec ut elit sodales, dignissim elit et, sollicitudin nulla.</li>--%>
<%--                    <li>Donec at leo sed nisl vestibulum fermentum.--%>
<%--                    </li>--%>
<%--                </ul>--%>
                <p>${Product.productLongDesc}</p>
            </div>
<%--            <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="product-tab-2">--%>
<%--                <c:forEach items="ListR" var="rev">--%>
<%--                    <div class="review-block">--%>
<%--                            <p>${rev.id}</p>--%>
<%--                            <p class="review-text font-italic m-0">${rev.content}</p>--%>
<%--                        <div class="rating-star mb-4">//Reviews--%>
<%--                                <i class="fa fa-fw fa-star"></i>--%>
<%--                            <p>${rev.star}</p>--%>
<%--                        </div>--%>
<%--                        <span class="text-dark font-weight-bold">${rev.author}</span><small class="text-mute"></small>--%>
<%--                    </div>--%>
<%--                </c:forEach>--%>
            </div>
        </div>
    </div>
</div>
</div>

</div>
</div>
</div>
</t:AdminLayout>

