<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/1/2022
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:ClientLayout>

    <!-- Start Feature Product -->
    <section class="categories-slider-area bg__white">
        <div class="container">
            <div class="row">
                <!-- Start Left Feature -->
                <div class="col-md-9 col-lg-9 col-sm-8 col-xs-12 float-left-style">
                    <!-- Start Slider Area -->
                    <div class="slider__container slider--one">
                        <div class="slider__activation__wrap owl-carousel owl-theme">
                            <!-- Start Single Slide -->
                            <div class="slide slider__full--screen slider-height-inherit slider-text-right" style="background: rgba(0, 0, 0, 0) url(images/slider/bg/1.png) no-repeat scroll center center / cover ;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-10 col-lg-8 col-md-offset-2 col-lg-offset-4 col-sm-12 col-xs-12">
                                            <div class="slider__inner">
                                                <h1>New Product <span class="text--theme">Collection</span></h1>
                                                <div class="slider__btn">
                                                    <a class="htc__btn" href="cart.html">shop now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Slide -->
                            <!-- Start Single Slide -->
                            <div class="slide slider__full--screen slider-height-inherit  slider-text-left" style="background: rgba(0, 0, 0, 0) url(images/slider/bg/2.png) no-repeat scroll center center / cover ;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
                                            <div class="slider__inner">
                                                <h1>New Product <span class="text--theme">Collection</span></h1>
                                                <div class="slider__btn">
                                                    <a class="htc__btn" href="cart.html">shop now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Slide -->
                        </div>
                    </div>
                    <!-- Start Slider Area -->
                </div>
                <div class="col-md-3 col-lg-3 col-sm-4 col-xs-12 float-right-style">
                    <div class="categories-menu mrg-xs">
                        <div class="category-heading">
                            <h3> Browse Categories</h3>
                        </div>
                        <div class="category-menu-list">
                            <ul>
                                <c:forEach>
                                    <li><a href="#"><img alt="" src="images/icons/thum2.png"> Women’s Clothing <i class="zmdi zmdi-chevron-right"></i></a>
                                        <div class="category-menu-dropdown">
                                            <div class="category-part-1 category-common mb--30">
                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>
                                                <ul>
                                                    <li><a href="#"> Men’s Clothing</a></li>
                                                    <li><a href="#"> Computer & Office</a></li>
                                                    <li><a href="#"> Jewelry & Watches</a></li>
                                                    <li><a href="#"> Bags & Shoes</a></li>
                                                    <li><a href="#"> Phones & Accessories</a></li>
                                                </ul>
                                            </div>
                                            <div class="category-part-2 category-common mb--30">
                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>
                                                <ul>
                                                    <li><a href="#"> Men’s Clothing</a></li>
                                                    <li><a href="#"> Computer & Office</a></li>
                                                    <li><a href="#"> Jewelry & Watches</a></li>
                                                    <li><a href="#"> Bags & Shoes</a></li>
                                                    <li><a href="#"> Phones & Accessories</a></li>
                                                </ul>
                                            </div>
                                            <div class="category-part-3 category-common">
                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>
                                                <ul>
                                                    <li><a href="#"> Men’s Clothing</a></li>
                                                    <li><a href="#"> Computer & Office</a></li>
                                                    <li><a href="#"> Jewelry & Watches</a></li>
                                                    <li><a href="#"> Bags & Shoes</a></li>
                                                    <li><a href="#"> Phones & Accessories</a></li>
                                                </ul>
                                            </div>
                                            <div class="category-part-4 category-common">
                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>
                                                <ul>
                                                    <li><a href="#"> Men’s Clothing</a></li>
                                                    <li><a href="#"> Computer & Office</a></li>
                                                    <li><a href="#"> Jewelry & Watches</a></li>
                                                    <li><a href="#"> Bags & Shoes</a></li>
                                                    <li><a href="#"> Phones & Accessories</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>



<%--                                <li><a href="#"><img alt="" src="images/icons/thum3.png"> Man Fashion <i class="zmdi zmdi-chevron-right"></i></a>--%>
<%--                                    <div class="category-menu-dropdown">--%>
<%--                                        <div class="category-part-1 category-common2 mb--30">--%>
<%--                                            <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                            <ul>--%>
<%--                                                <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="category-part-2 category-common2 mb--30">--%>
<%--                                            <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                            <ul>--%>
<%--                                                <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="category-part-3 category-common2 mb--30">--%>
<%--                                            <h4 class="categories-subtitle">dress</h4>--%>
<%--                                            <ul>--%>
<%--                                                <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="mega-banner-img">--%>
<%--                                            <a href="single-product.html">--%>
<%--                                                <img src="images/feature-img/5.jpg" alt="">--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li><a href="#"><img alt="" src="images/icons/thum4.png"> Computer & Office <i class="zmdi zmdi-chevron-right"></i></a>--%>
<%--                                    <div class="category-menu-dropdown">--%>
<%--                                        <div class="category-menu-dropdown-top">--%>
<%--                                            <div class="category-part-1 category-common2 mb--30">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                            <div class="category-part-2 category-common2 mb--30">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                            <div class="category-part-3 category-common2 mb--30">--%>
<%--                                                <h4 class="categories-subtitle">Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="category-menu-dropdown-bottom">--%>
<%--                                            <div class="single-category-brand">--%>
<%--                                                <a href="#"><img src="images/brand/6.png" alt=""></a>--%>
<%--                                            </div>--%>
<%--                                            <div class="single-category-brand">--%>
<%--                                                <a href="#"><img src="images/brand/7.png" alt=""></a>--%>
<%--                                            </div>--%>
<%--                                            <div class="single-category-brand">--%>
<%--                                                <a href="#"><img src="images/brand/8.png" alt=""></a>--%>
<%--                                            </div>--%>
<%--                                            <div class="single-category-brand">--%>
<%--                                                <a href="#"><img src="images/brand/9.png" alt=""></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li><a href="#"><img alt="" src="images/icons/thum5.png"> Jewelry & Watches <i class="zmdi zmdi-chevron-right"></i></a>--%>
<%--                                    <div class="category-menu-dropdown">--%>
<%--                                        <div class="category-menu-dropdown-left">--%>
<%--                                            <div class="category-part-1 category-common mb--30">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                            <div class="category-part-2 category-common mb--30">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                            <div class="category-part-3 category-common">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                            <div class="category-part-4 category-common">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="category-menu-dropdown-right">--%>
<%--                                            <div class="menu-right-img">--%>
<%--                                                <a href="#"><img src="images/feature-img/2.png" alt=""></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li><a href="#"><img alt="" src="images/icons/thum6.png"> Men’s Clothing <i class="zmdi zmdi-chevron-right"></i></a>--%>
<%--                                    <div class="category-menu-dropdown">--%>
<%--                                        <div class="category-menu-dropdown-left">--%>
<%--                                            <div class="category-part-1 category-common">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones </a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                            <div class="category-part-2 category-common">--%>
<%--                                                <h4 class="categories-subtitle"> Jewelry & Watches</h4>--%>
<%--                                                <ul>--%>
<%--                                                    <li><a href="#"> Men’s Clothing</a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Jewelry & Watches</a></li>--%>
<%--                                                    <li><a href="#"> Bags & Shoes</a></li>--%>
<%--                                                    <li><a href="#"> Phones </a></li>--%>
<%--                                                    <li><a href="#"> Computer & Office</a></li>--%>
<%--                                                    <li><a href="#"> Phones & Accessories</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="category-menu-dropdown-right">--%>
<%--                                            <div class="menu-right-img">--%>
<%--                                                <a href="#"><img src="images/feature-img/1.png" alt=""></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Left Feature -->
            </div>
        </div>
    </section>
    <!-- End Feature Product -->

    <div class="only-banner ptb--100 bg__white">
        <div class="container">
            <div class="only-banner-img">
                <a href="shop-sidebar.html"><img src="images/new-product/3.jpg" alt="new product"></a>
            </div>
        </div>
    </div>

    <!-- Start Our Product Area -->
    <section class="htc__product__area bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="product-categories-all">
                        <div class="product-categories-title">
                            <h3>Jewelry & watches</h3>
                        </div>
                        <div class="product-categories-menu">
                            <ul>
                                <li><a href="#">awesome Rings</a></li>
                                <li><a href="#">Hot Earrings</a></li>
                                <li><a href="#">Jewelry Sets</a></li>
                                <li><a href="#">Beads Jewelry</a></li>
                                <li><a href="#">Men's Watches</a></li>
                                <li><a href="#">Women’s Watches</a></li>
                                <li><a href="#">Popular Bracelets</a></li>
                                <li><a href="#"> Pendant Necklaces</a></li>
                                <li><a href="#">Children's Watches</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="product-style-tab">
                        <div class="product-tab-list">
                            <!-- Nav tabs -->
                            <ul class="tab-style" role="tablist">
                                <li class="active">
                                    <a href="#home1" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>latest </h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home2" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>best sale </h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home3" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>top rated</h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home4" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>on sale</h4>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content another-product-style jump">
                            <div class="tab-pane active" id="home1">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/1.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="https://hentaivn.tv/"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home2">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/6.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/7.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/8.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home3">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/1.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home4">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/9.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Our Product Area -->

    <div class="only-banner ptb--100 bg__white">
        <div class="container">
            <div class="only-banner-img">
                <a href="shop-sidebar.html"><img src="images/new-product/6.jpg" alt="new product"></a>
            </div>
        </div>
    </div>

    <!-- Start Our Product Area -->
    <section class="htc__product__area pb--100 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="product-categories-all">
                        <div class="product-categories-title">
                            <h3>BAGS & SHOES</h3>
                        </div>
                        <div class="product-categories-menu">
                            <ul>
                                <li><a href="#">awesome Rings</a></li>
                                <li><a href="#">Hot Earrings</a></li>
                                <li><a href="#">Jewelry Sets</a></li>
                                <li><a href="#">Beads Jewelry</a></li>
                                <li><a href="#">Men's Watches</a></li>
                                <li><a href="#">Women’s Watches</a></li>
                                <li><a href="#">Popular Bracelets</a></li>
                                <li><a href="#"> Pendant Necklaces</a></li>
                                <li><a href="#">Children's Watches</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="product-style-tab">
                        <div class="product-tab-list">
                            <!-- Nav tabs -->
                            <ul class="tab-style" role="tablist">
                                <li class="active">
                                    <a href="#home5" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>latest </h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home6" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>best sale </h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home7" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>top rated</h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home8" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>on sale</h4>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content another-product-style jump">
                            <div class="tab-pane active" id="home5">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/1.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home6">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/6.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/7.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/8.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/9.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home7">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/1.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/7.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home8">
                                <div class="row">
                                    <div class="product-slider-active owl-carousel">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/9.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/7.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Our Product Area -->

    <div class="only-banner bg__white">
        <div class="container">
            <div class="only-banner-img">
                <a href="shop-sidebar.html"><img src="images/new-product/7.jpg" alt="new product"></a>
            </div>
        </div>
    </div>

    <!-- Start Our Product Area -->
    <section class="htc__product__area ptb--100 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="product-categories-all">
                        <div class="product-categories-title">
                            <h3>kids & MOTHER</h3>
                        </div>
                        <div class="product-categories-menu">
                            <ul>
                                <li><a href="#">awesome Rings</a></li>
                                <li><a href="#">Hot Earrings</a></li>
                                <li><a href="#">Jewelry Sets</a></li>
                                <li><a href="#">Beads Jewelry</a></li>
                                <li><a href="#">Men's Watches</a></li>
                                <li><a href="#">Women’s Watches</a></li>
                                <li><a href="#">Popular Bracelets</a></li>
                                <li><a href="#"> Pendant Necklaces</a></li>
                                <li><a href="#">Children's Watches</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="product-style-tab">
                        <div class="product-tab-list">
                            <!-- Nav tabs -->
                            <ul class="tab-style product-tab-list-btn" role="tablist">
                                <li class="active">
                                    <a href="#home9" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>latest </h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home10" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>best sale </h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home11" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>top rated</h4>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#home12" data-toggle="tab">
                                        <div class="tab-menu-text">
                                            <h4>on sale</h4>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <div class="all-product-btn">
                                <a href="shop-sidebar.html">all</a>
                            </div>
                        </div>
                        <div class="tab-content another-product-style">
                            <div class="tab-pane active" id="home9">
                                <div class="row">
                                    <div class="product-slider-active2">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/3.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home10">
                                <div class="row">
                                    <div class="product-slider-active2">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/4.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/6.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home11">
                                <div class="row">
                                    <div class="product-slider-active2">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/2.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/1.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/5.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="home12">
                                <div class="row">
                                    <div class="product-slider-active2">
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/9.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/8.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                            <div class="product">
                                                <div class="product__inner">
                                                    <div class="pro__thumb">
                                                        <a href="#">
                                                            <img src="images/product/7.png" alt="product images">
                                                        </a>
                                                    </div>
                                                    <div class="product__hover__info">
                                                        <ul class="product__action">
                                                            <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                            <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                            <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product__details">
                                                    <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                    <ul class="product__price">
                                                        <li class="old__price">$16.00</li>
                                                        <li class="new__price">$10.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Our Product Area -->


    <!-- Start Blog Area -->
    <section class="htc__blog__area bg__white pb--130">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section__title section__title--2 text-center">
                        <h2 class="title__line">Latest News</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod temp incididunt ut labore et dolore magna aliqua. </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="blog__wrap clearfix mt--60 xmt-30">
                    <!-- Start Single Blog -->
                    <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                        <div class="blog foo">
                            <div class="blog__inner">
                                <div class="blog__thumb">
                                    <a href="blog-details.html">
                                        <img src="clientsets/images/blog/blog-img/1.jpg" alt="blog images">
                                    </a>
                                    <div class="blog__post__time">
                                        <div class="post__time--inner">
                                            <span class="date">14</span>
                                            <span class="month">sep</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog__hover__info">
                                    <div class="blog__hover__action">
                                        <p class="blog__des"><a href="blog-details.html">Lorem ipsum dolor sit consectetu.</a></p>
                                        <ul class="bl__meta">
                                            <li>By :<a href="#">Admin</a></li>
                                            <li>Product</li>
                                        </ul>
                                        <div class="blog__btn">
                                            <a class="read__more__btn" href="blog-details.html">read more</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                    <!-- Start Single Blog -->
                    <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                        <div class="blog foo">
                            <div class="blog__inner">
                                <div class="blog__thumb">
                                    <a href="blog-details.html">
                                        <img src="clientsets/images/blog/blog-img/2.jpg" alt="blog images">
                                    </a>
                                    <div class="blog__post__time">
                                        <div class="post__time--inner">
                                            <span class="date">14</span>
                                            <span class="month">sep</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog__hover__info">
                                    <div class="blog__hover__action">
                                        <p class="blog__des"><a href="blog-details.html">Lorem ipsum dolor sit consectetu.</a></p>
                                        <ul class="bl__meta">
                                            <li>By :<a href="#">Admin</a></li>
                                            <li>Product</li>
                                        </ul>
                                        <div class="blog__btn">
                                            <a class="read__more__btn" href="blog-details.html">read more</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                    <!-- Start Single Blog -->
                    <div class="col-md-4 col-lg-4 hidden-sm col-xs-12">
                        <div class="blog foo">
                            <div class="blog__inner">
                                <div class="blog__thumb">
                                    <a href="blog-details.html">
                                        <img src="images/blog/blog-img/3.jpg" alt="blog images">
                                    </a>
                                    <div class="blog__post__time">
                                        <div class="post__time--inner">
                                            <span class="date">14</span>
                                            <span class="month">sep</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog__hover__info">
                                    <div class="blog__hover__action">
                                        <p class="blog__des"><a href="blog-details.html">Lorem ipsum dolor sit consectetu.</a></p>
                                        <ul class="bl__meta">
                                            <li>By :<a href="#">Admin</a></li>
                                            <li>Product</li>
                                        </ul>
                                        <div class="blog__btn">
                                            <a class="read__more__btn" href="blog-details.html">read more</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog Area -->
</t:ClientLayout>

