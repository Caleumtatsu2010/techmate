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
        <p>${color}</p>
    </c:forEach>



<%--<label for="radio-1"></label>--%>

<%--<label for="radio-2"></label>--%>

<%--<label for="radio-3"></label>--%>
</div>
<div class="product-size border-bottom">
    <h4>Size</h4>
    <div class="btn-group" role="group" aria-label="First group">
        <p class="pr-1">SM</p>
        <p class="pr-1">SM</p>
        <p class="pr-1">SM</p>
        <p class="pr-1">SM</p>

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
<%--<div class="product-description">--%>
<%--    <h4 class="mb-1">Descriptions</h4>--%>
<%--    <div  style="text-wrap: normal">${Product.desc}</div>--%>
<%--    <a href="#" class="btn btn-primary btn-lg">Edit</a>--%>
<%--    <a href="#" class="btn btn-danger btn-lg">Cancel</a>--%>
<%--</div>--%>
        <div class="product-description">
            <h4 class="mb-1">Descriptions</h4>
            <p>${Product.desc}</p>
            <a href="#" class="btn btn-primary btn-lg">Edit</a>
            <a href="#" class="btn btn-danger btn-lg">Cancel</a>
        </div>
</div>
</div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-12 mb-5">
            <div class="section-block">
                <h5 class="section-title">Outline Tabs</h5>
                <p>Takes the basic nav from above and adds the .nav-tabs class to generate a tabbed interface..</p>
            </div>
            <div class="tab-outline">
                <ul class="nav nav-tabs" id="myTab2" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="tab-outline-one" data-toggle="tab" href="#outline-one" role="tab" aria-controls="home" aria-selected="true">Detail</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tab-outline-two" data-toggle="tab" href="#outline-two" role="tab" aria-controls="profile" aria-selected="false">Review</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tab-outline-three" data-toggle="tab" href="#outline-three" role="tab" aria-controls="contact" aria-selected="false">Tab#3</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent2">
                    <div class="tab-pane fade show active" id="outline-one" role="tabpanel" aria-labelledby="tab-outline-one">
                        <p class="lead"> All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. </p>
                        <p>Phasellus non ante gravida, ultricies neque a, fermentum leo. Etiam ornare enim arcu, at venenatis odio mollis quis. Mauris fermentum elementum ligula in efficitur. Aliquam id congue lorem. Proin consectetur feugiasse platea dictumst. Pellentesque sed justo aliquet, posuere sem nec, elementum ante.</p>
                    //ckedittor go here
                    </div>
                    <div class="tab-pane fade" id="outline-two" role="tabpanel" aria-labelledby="tab-outline-two">
                        <c:forEach items="${ListReview}" var="review">
                            <p>Id: ${review.id}</p>
                            <p>Star: ${review.star}</p>
                            <p>${review.content}</p>
                            <h4>User Id: ${review.userId}</h4>
                        </c:forEach>
                    </div>


                    <div class="tab-pane fade" id="outline-three" role="tabpanel" aria-labelledby="tab-outline-three">
                        <h3>Heading Title of Outline Tabs</h3>
                        <p>Vivamus pellentesque vestibulum lectus vitae auctor. Maecenas eu sodales arcu. Fusce lobortis, libero ac cursus feugiat, nibh ex ultricies tortor, id dictum massa nisl ac nisi. Fusce a eros pellentesque, ultricies urna nec, consectetur dolor. Nam dapibus scelerisque risus, a commodo mi tempus eu.</p>
                        <p>Maecenas eu sodales arcu. Fusce lobortis, libero ac cursus feugiat, nibh ex ultricies tortor, id dictum massa nisl ac nisi. Fusce a eros pellentesque, ultricies urna nec, consectetur dolor.</p>
                    </div>

                </div>

            </div>
        </div>

</div>
</div>
</div>
</t:AdminLayout>

