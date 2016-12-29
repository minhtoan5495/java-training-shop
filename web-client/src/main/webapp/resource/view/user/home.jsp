<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div class="body-content outer-top-xs" id="top-banner-and-menu">
    <div class="container">
        <div class="row">
            <!-- ============================================== SIDEBAR ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
                <div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
                    <c:if test="${not empty discounts}">
                        <h3 class="section-title">Product Discount</h3>
                        <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
                            <c:forEach var="discount" items="${discounts}">
                                <c:forEach var="productDetail" items="${discount.product.productDetails}">
                                    <div class="item">
                                        <div class="products">
                                            <div class="hot-deal-wrapper">
                                                <div class="image">
                                                    <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                        <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                             alt="">
                                                    </a>
                                                </div>
                                                <div class="sale-offer-tag"><span>${discount.discount} %<br>off</span>
                                                </div>
                                                <div class="timing-wrapper">
                                                    <div class="box-wrapper">
                                                        <div class="date box">
                                                            <span class="key">${Calendar.getInstance().add(discount.endDate, -Date())}</span>
                                                            <span class="value">Days</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- /.hot-deal-wrapper -->
                                            <div class="product-info text-left m-t-20">
                                                <h3 class="name"><a
                                                        href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                </h3>
                                                <div class="rating rateit-small"></div>

                                                <div class="product-price">
                                        <span class="price">
                                            $ ${productDetail.productDetailPrice}
                                        </span>
                                                    <span class="price-before-discount">$ 0</span>
                                                </div><!-- /.product-price -->
                                            </div><!-- /.product-info -->
                                            <div class="cart clearfix animate-effect">
                                                <div class="action">
                                                    <div class="btn-group">
                                                        <a onclick="if(${productDetail.productDetailQuantity == 0}) {return alert('Sorry. This product is out of stock !')}"
                                                                <c:if test="${productDetail.productDetailQuantity > 0}">
                                                                    href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                                </c:if>
                                                           class="btn btn-primary"><i
                                                                class="fa fa-shopping-cart inner-right-vs"></i> Add To
                                                            Cart</a>
                                                    </div>
                                                </div><!-- /.action -->
                                            </div><!-- /.cart -->
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:forEach>
                        </div>
                        <!-- /.sidebar-widget -->
                    </c:if>
                </div>
                <!-- ============================================== HOT DEALS: END ============================================== -->
                <!-- ============================================== SPECIAL OFFER ============================================== -->
                <div class="sidebar-widget outer-bottom-small wow fadeInUp">
                    <h3 class="section-title">Special Offer</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                            <div class="item">
                                <div class="products special-product">
                                    <c:forEach var="productDetail" items="${listProductDetailCheap}">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->


                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${productDetail.productDetailPrice}			</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products special-product">
                                    <c:forEach var="productDetail" items="${listProductDetailCheap}">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
				                                            <span class="price">
					                                            $ ${productDetail.productDetailPrice}			</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->

                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products special-product">
                                    <c:forEach var="productDetail" items="${listProductDetailCheap}">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${productDetail.productDetailPrice}			</span>

                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->

                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== SPECIAL OFFER : END ============================================== -->
                <!-- ============================================== PRODUCT TAGS ============================================== -->
                <div class="sidebar-widget product-tag wow fadeInUp">
                    <h3 class="section-title">Product tags</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="tag-list">
                            <a class="item" title="Phone" href="category.html">Phone</a>
                            <a class="item active" title="Vest" href="category.html">Vest</a>
                            <a class="item" title="Smartphone" href="category.html">Smartphone</a>
                            <a class="item" title="Furniture" href="category.html">Furniture</a>
                            <a class="item" title="T-shirt" href="category.html">T-shirt</a>
                            <a class="item" title="Sweatpants" href="category.html">Sweatpants</a>
                            <a class="item" title="Sneaker" href="category.html">Sneaker</a>
                            <a class="item" title="Toys" href="category.html">Toys</a>
                            <a class="item" title="Rose" href="category.html">Rose</a>
                        </div><!-- /.tag-list -->
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== PRODUCT TAGS : END ============================================== -->
                <!-- ============================================== SPECIAL DEALS ============================================== -->
                <div class="sidebar-widget outer-bottom-small wow fadeInUp">
                    <h3 class="section-title">Special Deals</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                            <div class="item">
                                <div class="products special-product">
                                    <c:forEach var="productDetail" items="${listProductDetailCheap}">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.product.productName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${productDetail.productDetailPrice}			</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products special-product">
                                    <c:forEach var="productDetail" items="${listProductDetailCheap}">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.product.productName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${productDetail.productDetailPrice}			</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products special-product">
                                    <c:forEach var="productDetail" items="${listProductDetailCheap}">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${productDetail.productDetailPrice}			</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== SPECIAL DEALS : END ============================================== -->
                <!-- ============================================== NEWSLETTER ============================================== -->
                <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
                    <h3 class="section-title">Newsletters</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <p>Sign Up for Our Newsletter!</p>
                        <form role="form">
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1"
                                       placeholder="Subscribe to our newsletter">
                            </div>
                            <button class="btn btn-primary">Subscribe</button>
                        </form>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== NEWSLETTER: END ============================================== -->

                <!-- ============================================== Testimonials============================================== -->
                <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
                    <div id="advertisement" class="advertisement">
                        <div class="item">
                            <div class="avatar"><img
                                    src="${contextPath}/resource/view/template/assets/images/testimonials/member1.png"
                                    alt="Image"></div>
                            <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port
                                mollis.
                                Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                            <div class="clients_author">John Doe <span>Abc Company</span></div>
                            <!-- /.container-fluid -->
                        </div><!-- /.item -->

                        <div class="item">
                            <div class="avatar"><img
                                    src="${contextPath}/resource/view/template/assets/images/testimonials/member3.png"
                                    alt="Image"></div>
                            <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port
                                mollis.
                                Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                            <div class="clients_author">Stephen Doe <span>Xperia Designs</span></div>
                        </div><!-- /.item -->

                        <div class="item">
                            <div class="avatar"><img
                                    src="${contextPath}/resource/view/template/assets/images/testimonials/member2.png"
                                    alt="Image"></div>
                            <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port
                                mollis.
                                Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                            <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span></div>
                            <!-- /.container-fluid -->
                        </div><!-- /.item -->
                    </div><!-- /.owl-carousel -->
                </div>
                <!-- ============================================== Testimonials: END ============================================== -->
            </div><!-- /.sidemenu-holder -->
            <!-- ============================================== SIDEBAR : END ============================================== -->
            <!-- ============================================== CONTENT ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                <!-- ========================================== SECTION – HERO ========================================= -->
                <div id="hero">
                    <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">

                        <div class="item"
                             style="background-image: url(${contextPath}/resource/view/template/assets/images/sliders/01.jpg);">
                            <div class="container-fluid">
                                <div class="caption bg-color vertical-center text-left">
                                    <div class="button-holder fadeInDown-3">
                                        <a href="${contextPath}/product?check=productPriceAsc"
                                           class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop Now</a>
                                    </div>
                                </div><!-- /.caption -->
                            </div><!-- /.container-fluid -->
                        </div><!-- /.item -->
                        <div class="item"
                             style="background-image: url(${contextPath}/resource/view/template/assets/images/sliders/02.jpg);">
                            <div class="container-fluid">
                                <div class="caption bg-color vertical-center text-left">
                                    <div class="button-holder fadeInDown-3">
                                        <a href="${contextPath}/product?check=productPriceAsc"
                                           class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop Now</a>
                                    </div>
                                </div><!-- /.caption -->
                            </div><!-- /.container-fluid -->
                        </div><!-- /.item -->
                    </div><!-- /.owl-carousel -->
                </div>
                <!-- ========================================= SECTION – HERO : END ========================================= -->
                <!-- ============================================== INFO BOXES ============================================== -->
                <div class="info-boxes wow fadeInUp">
                    <div class="info-boxes-inner">
                        <div class="row">
                            <div class="col-md-6 col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <h4 class="info-box-heading green">money back</h4>
                                        </div>
                                    </div>
                                    <h6 class="text">30 Days Money Back Guarantee</h6>
                                </div>
                            </div><!-- .col -->
                            <div class="hidden-md col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <div class="row">

                                        <div class="col-xs-12">
                                            <h4 class="info-box-heading green">free shipping</h4>
                                        </div>
                                    </div>
                                    <h6 class="text">Shipping on orders over $99</h6>
                                </div>
                            </div><!-- .col -->
                            <div class="col-md-6 col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <h4 class="info-box-heading green">Special Sale</h4>
                                        </div>
                                    </div>
                                    <h6 class="text">Extra $5 off on all items </h6>
                                </div>
                            </div><!-- .col -->
                        </div><!-- /.row -->
                    </div><!-- /.info-boxes-inner -->

                </div><!-- /.info-boxes -->
                <!-- ============================================== INFO BOXES : END ============================================== -->
                <!-- ============================================== SCROLL TABS ============================================== -->
                <div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
                    <div class="more-info-tab clearfix ">
                        <h3 class="new-product-title pull-left">New Products</h3>
                        <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                            <li class="active"><a data-transition-type="backSlide" href="#all"
                                                  data-toggle="tab">All</a>
                            </li>
                            <li><a data-transition-type="backSlide" href="#smartphone"
                                   data-toggle="tab">Clothing</a>
                            </li>
                            <li><a data-transition-type="backSlide" href="#laptop" data-toggle="tab">Electronics</a>
                            </li>
                            <li><a data-transition-type="backSlide" href="#apple" data-toggle="tab">Shoes</a></li>
                        </ul><!-- /.nav-tabs -->
                    </div>
                    <div class="tab-content outer-top-xs">
                        <div class="tab-pane in active" id="all">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                    <c:forEach var="productDetail" items="${listProductDetailNew}">
                                        <div class="item item-carousel">
                                            <div class="products">

                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image">
                                                            <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'><img
                                                                    src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                    alt=""></a>
                                                        </div><!-- /.image -->

                                                        <div class="tag new"><span>new</span></div>
                                                    </div><!-- /.product-image -->
                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a
                                                                href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                        </h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price">
                                                        <span class="price">
                                                                $ ${productDetail.productDetailPrice}				</span>
                                                            <span class="price-before-discount">$ 0%</span>
                                                        </div><!-- /.product-price -->
                                                    </div><!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <a data-toggle="tooltip"
                                                                       onclick="if(${productDetail.productDetailQuantity == 0}) {return alert('Sorry. This product is out of stock !')}"
                                                                            <c:if test="${productDetail.productDetailQuantity > 0}">
                                                                                href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                                            </c:if>
                                                                       class="btn btn-primary icon" type="button"
                                                                       title="Add To Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                    <a href="">
                                                                        <button class="btn btn-primary cart-btn"
                                                                                type="button">Add To Cart
                                                                        </button>
                                                                    </a>

                                                                </li>
                                                                <li class="lnk wishlist">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Wishlist">
                                                                        <i class="icon fa fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Compare">
                                                                        <i class="fa fa-signal"
                                                                           aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div><!-- /.action -->
                                                    </div><!-- /.cart -->
                                                </div><!-- /.product -->
                                            </div><!-- /.products -->
                                        </div>
                                        <!-- /.item -->
                                    </c:forEach>
                                </div><!-- /.home-owl-carousel -->
                            </div><!-- /.product-slider -->
                        </div><!-- /.tab-pane -->
                        <div class="tab-pane" id="smartphone">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                                    <c:forEach var="productDetail" items="${listProductDetailNew}">
                                        <div class="item item-carousel">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image">
                                                            <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'><img
                                                                    src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                    alt=""></a>
                                                        </div><!-- /.image -->
                                                        <div class="tag new"><span>new</span></div>
                                                    </div><!-- /.product-image -->
                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a
                                                                href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                        </h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price">
                                                        <span class="price">
                                                                $ ${productDetail.productDetailPrice}				</span>
                                                            <span class="price-before-discount">$ 0%</span>
                                                        </div><!-- /.product-price -->
                                                    </div><!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <a data-toggle="tooltip"
                                                                       onclick="if(${productDetail.productDetailQuantity == 0}) {return alert('Sorry. This product is out of stock !')}"
                                                                            <c:if test="${productDetail.productDetailQuantity > 0}">
                                                                                href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                                            </c:if>
                                                                       class="btn btn-primary icon" type="button"
                                                                       title="Add To Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                    <a href="">
                                                                        <button class="btn btn-primary cart-btn"
                                                                                type="button">Add To Cart
                                                                        </button>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk wishlist">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Wishlist">
                                                                        <i class="icon fa fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Compare">
                                                                        <i class="fa fa-signal"
                                                                           aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div><!-- /.action -->
                                                    </div><!-- /.cart -->
                                                </div><!-- /.product -->
                                            </div><!-- /.products -->
                                        </div>
                                        <!-- /.item -->
                                    </c:forEach>
                                </div><!-- /.home-owl-carousel -->
                            </div><!-- /.product-slider -->
                        </div><!-- /.tab-pane -->
                        <div class="tab-pane" id="laptop">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                                    <c:forEach var="productDetail" items="${listProductDetailNew}">
                                        <div class="item item-carousel">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image">
                                                            <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'><img
                                                                    src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                    alt=""></a>
                                                        </div><!-- /.image -->
                                                        <div class="tag new"><span>new</span></div>
                                                    </div><!-- /.product-image -->
                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a
                                                                href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                        </h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price">
                                                        <span class="price">
                                                                $ ${productDetail.productDetailPrice}				</span>
                                                            <span class="price-before-discount">$ 0%</span>
                                                        </div><!-- /.product-price -->
                                                    </div><!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <a data-toggle="tooltip"
                                                                       onclick="if(${productDetail.productDetailQuantity == 0}) {return alert('Sorry. This product is out of stock !')}"
                                                                            <c:if test="${productDetail.productDetailQuantity > 0}">
                                                                                href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                                            </c:if>
                                                                       class="btn btn-primary icon" type="button"
                                                                       title="Add To Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                    <a href="">
                                                                        <button class="btn btn-primary cart-btn"
                                                                                type="button">Add To Cart
                                                                        </button>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk wishlist">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Wishlist">
                                                                        <i class="icon fa fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Compare">
                                                                        <i class="fa fa-signal"
                                                                           aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div><!-- /.action -->
                                                    </div><!-- /.cart -->
                                                </div><!-- /.product -->
                                            </div><!-- /.products -->
                                        </div>
                                        <!-- /.item -->
                                    </c:forEach>
                                </div><!-- /.home-owl-carousel -->
                            </div><!-- /.product-slider -->
                        </div><!-- /.tab-pane -->

                        <div class="tab-pane" id="apple">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                                    <c:forEach var="productDetail" items="${listProductDetailNew}">
                                        <div class="item item-carousel">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image">
                                                            <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'><img
                                                                    src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                                    alt=""></a>
                                                        </div><!-- /.image -->
                                                        <div class="tag new"><span>new</span></div>
                                                    </div><!-- /.product-image -->
                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a
                                                                href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                                        </h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price">
                                                        <span class="price">
                                                                $ ${productDetail.productDetailPrice}				</span>
                                                            <span class="price-before-discount">$ 0%</span>
                                                        </div><!-- /.product-price -->

                                                    </div><!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <a data-toggle="tooltip"
                                                                       onclick="if(${productDetail.productDetailQuantity == 0}) {return alert('Sorry. This product is out of stock !')}"
                                                                            <c:if test="${productDetail.productDetailQuantity > 0}">
                                                                                href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                                            </c:if>
                                                                       class="btn btn-primary icon" type="button"
                                                                       title="Add To Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                    <a href="">
                                                                        <button class="btn btn-primary cart-btn"
                                                                                type="button">Add To Cart
                                                                        </button>
                                                                    </a>

                                                                </li>
                                                                <li class="lnk wishlist">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Wishlist">
                                                                        <i class="icon fa fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk">
                                                                    <a data-toggle="tooltip" class="add-to-cart"
                                                                       href="detail.html" title="Compare">
                                                                        <i class="fa fa-signal"
                                                                           aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div><!-- /.action -->
                                                    </div><!-- /.cart -->
                                                </div><!-- /.product -->
                                            </div><!-- /.products -->
                                        </div>
                                        <!-- /.item -->
                                    </c:forEach>
                                </div><!-- /.home-owl-carousel -->
                            </div><!-- /.product-slider -->
                        </div><!-- /.tab-pane -->

                    </div><!-- /.tab-content -->
                </div><!-- /.scroll-tabs -->
                <!-- ============================================== SCROLL TABS : END ============================================== -->
                <!-- ============================================== WIDE PRODUCTS ============================================== -->
                <div class="wide-banners wow fadeInUp outer-bottom-xs">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <div class="wide-banner cnt-strip">
                                <div class="image">
                                    <img class="img-responsive"
                                         src="${contextPath}/resource/view/template/assets/images/banners/home-banner1.jpg"
                                         alt="">
                                </div>
                            </div><!-- /.wide-banner -->
                        </div><!-- /.col -->
                        <div class="col-md-5 col-sm-5">
                            <div class="wide-banner cnt-strip">
                                <div class="image">
                                    <img class="img-responsive"
                                         src="${contextPath}/resource/view/template/assets/images/banners/home-banner2.jpg"
                                         alt="">
                                </div>
                            </div><!-- /.wide-banner -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.wide-banners -->

                <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
                <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                <section class="section featured-product wow fadeInUp">
                    <h3 class="section-title">Expensive products</h3>
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
                        <c:forEach var="productDetail" items="${listProductDetailExpensivePrice}">
                            <div class="item item-carousel">
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'><img
                                                        src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                        alt=""></a>
                                            </div><!-- /.image -->
                                            <div class="tag hot"><span>hot</span></div>
                                        </div><!-- /.product-image -->
                                        <div class="product-info text-left">
                                            <h3 class="name"><a
                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                            </h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>
                                            <div class="product-price">
                                            <span class="price">
                                                $ ${productDetail.productDetailPrice}				</span>
                                                <span class="price-before-discount">$ 0%</span>
                                            </div><!-- /.product-price -->
                                        </div><!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <a data-toggle="tooltip"
                                                           onclick="if(${productDetail.productDetailQuantity == 0}) {return alert('Sorry. This product is out of stock !')}"
                                                                <c:if test="${productDetail.productDetailQuantity > 0}">
                                                                    href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                                </c:if>
                                                           class="btn btn-primary icon" type="button"
                                                           title="Add To Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </a>
                                                        <a href="">
                                                            <button class="btn btn-primary cart-btn"
                                                                    type="button">Add To Cart
                                                            </button>
                                                        </a>
                                                    </li>
                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>
                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div><!-- /.action -->
                                        </div><!-- /.cart -->
                                    </div><!-- /.product -->
                                </div><!-- /.products -->
                            </div>
                            <!-- /.item -->
                        </c:forEach>
                    </div><!-- /.home-owl-carousel -->
                </section><!-- /.section -->
                <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
                <!-- ============================================== WIDE PRODUCTS ============================================== -->
                <div class="wide-banners wow fadeInUp outer-bottom-xs">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="wide-banner cnt-strip">
                                <div class="image">
                                    <img class="img-responsive"
                                         src="${contextPath}/resource/view/template/assets/images/banners/home-banner.jpg"
                                         alt="">
                                </div>
                                <div class="strip strip-text">
                                    <div class="strip-inner">
                                        <h2 class="text-right">New Mens Fashion<br>
                                            <span class="shopping-needs">Save up to 40% off</span></h2>
                                    </div>
                                </div>
                                <div class="new-label">
                                    <div class="text">NEW</div>
                                </div><!-- /.new-label -->
                            </div><!-- /.wide-banner -->
                        </div><!-- /.col -->

                    </div><!-- /.row -->
                </div><!-- /.wide-banners -->
                <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
                <!-- ============================================== BEST SELLER ============================================== -->

                <div class="best-deal wow fadeInUp outer-bottom-xs">
                    <h3 class="section-title">Best seller</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                            <c:forEach var="i" begin="0" end="6" step="2">
                                <div class="item">
                                    <div class="products best-product">
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${list8ProductDetail[i].id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${list8ProductDetail[i].productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col2 col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${list8ProductDetail[i].id}"/></c:url>'>${list8ProductDetail[i].product.productName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${list8ProductDetail[i].productDetailPrice}				</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->
                                        </div>
                                        <div class="product">
                                            <div class="product-micro">
                                                <div class="row product-micro-row">
                                                    <div class="col col-xs-5">
                                                        <div class="product-image">
                                                            <div class="image">
                                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${list8ProductDetail[i+1].id}"/></c:url>'>
                                                                    <img src="/uploaded-image/${list8ProductDetail[i+1].productImages.get(0).url}"
                                                                         alt="">
                                                                </a>
                                                            </div><!-- /.image -->
                                                        </div><!-- /.product-image -->
                                                    </div><!-- /.col -->
                                                    <div class="col2 col-xs-7">
                                                        <div class="product-info">
                                                            <h3 class="name"><a
                                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${list8ProductDetail[i+1].id}"/></c:url>'>${list8ProductDetail[i+1].product.productName}</a>
                                                            </h3>
                                                            <div class="rating rateit-small"></div>
                                                            <div class="product-price">
                                                            <span class="price">
                                                                $ ${list8ProductDetail[i+1].productDetailPrice}			</span>
                                                            </div><!-- /.product-price -->
                                                        </div>
                                                    </div><!-- /.col -->
                                                </div><!-- /.product-micro-row -->
                                            </div><!-- /.product-micro -->
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== BEST SELLER : END ============================================== -->
                <!-- ============================================== BLOG SLIDER ============================================== -->
                <section class="section latest-blog outer-bottom-vs wow fadeInUp">
                    <h3 class="section-title">latest form blog</h3>
                    <div class="blog-slider-container outer-top-xs">
                        <div class="owl-carousel blog-slider custom-carousel">
                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image">
                                            <a href="blog.html"><img
                                                    src="${contextPath}/resource/view/template/assets/images/blog-post/post1.jpg"
                                                    alt=""></a>
                                        </div>
                                    </div><!-- /.blog-post-image -->
                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">Voluptatem accusantium doloremque
                                            laudantium</a>
                                        </h3>
                                        <span class="info">By Jone Doe &nbsp;|&nbsp; 21 March 2016 </span>
                                        <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et
                                            dolore magnam aliquam quaerat voluptatem.</p>
                                        <a href="#" class="lnk btn btn-primary">Read more</a>
                                    </div><!-- /.blog-post-info -->
                                </div><!-- /.blog-post -->
                            </div><!-- /.item -->
                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image">
                                            <a href="blog.html"><img
                                                    src="${contextPath}/resource/view/template/assets/images/blog-post/post2.jpg"
                                                    alt=""></a>
                                        </div>
                                    </div><!-- /.blog-post-image -->
                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla
                                            pariatur</a>
                                        </h3>
                                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                                        <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et
                                            dolore magnam aliquam quaerat voluptatem.</p>
                                        <a href="#" class="lnk btn btn-primary">Read more</a>
                                    </div><!-- /.blog-post-info -->
                                </div><!-- /.blog-post -->
                            </div><!-- /.item -->
                            <!-- /.item -->
                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image">
                                            <a href="blog.html"><img
                                                    src="${contextPath}/resource/view/template/assets/images/blog-post/post1.jpg"
                                                    alt=""></a>
                                        </div>
                                    </div><!-- /.blog-post-image -->
                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla
                                            pariatur</a>
                                        </h3>
                                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                                        <p class="text">Sed ut perspiciatis unde omnis iste natus error sit
                                            voluptatem
                                            accusantium</p>
                                        <a href="#" class="lnk btn btn-primary">Read more</a>
                                    </div><!-- /.blog-post-info -->
                                </div><!-- /.blog-post -->
                            </div><!-- /.item -->
                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image">
                                            <a href="blog.html"><img
                                                    src="${contextPath}/resource/view/template/assets/images/blog-post/post2.jpg"
                                                    alt=""></a>
                                        </div>
                                    </div><!-- /.blog-post-image -->
                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla
                                            pariatur</a>
                                        </h3>
                                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                                        <p class="text">Sed ut perspiciatis unde omnis iste natus error sit
                                            voluptatem
                                            accusantium</p>
                                        <a href="#" class="lnk btn btn-primary">Read more</a>
                                    </div><!-- /.blog-post-info -->
                                </div><!-- /.blog-post -->
                            </div><!-- /.item -->
                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image">
                                            <a href="blog.html"><img
                                                    src="${contextPath}/resource/view/template/assets/images/blog-post/post1.jpg"
                                                    alt=""></a>
                                        </div>
                                    </div><!-- /.blog-post-image -->
                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla
                                            pariatur</a>
                                        </h3>
                                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                                        <p class="text">Sed ut perspiciatis unde omnis iste natus error sit
                                            voluptatem
                                            accusantium</p>
                                        <a href="#" class="lnk btn btn-primary">Read more</a>
                                    </div><!-- /.blog-post-info -->
                                </div><!-- /.blog-post -->
                            </div><!-- /.item -->
                        </div><!-- /.owl-carousel -->
                    </div><!-- /.blog-slider-container -->
                </section><!-- /.section -->
                <!-- ============================================== BLOG SLIDER : END ============================================== -->
                <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                <section class="section wow fadeInUp new-arriavls">
                    <h3 class="section-title">New Arrivals</h3>
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
                        <c:forEach var="productDetail" items="${listProductDetailNew}">
                            <div class="item item-carousel">
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'><img
                                                        src="/uploaded-image/${productDetail.productImages.get(0).url}"
                                                        alt=""></a>
                                            </div><!-- /.image -->
                                            <div class="tag new"><span>new</span></div>
                                        </div><!-- /.product-image -->
                                        <div class="product-info text-left">
                                            <h3 class="name"><a
                                                    href='<c:url value="detail.html"><c:param name="productDetailId" value="${productDetail.id}"/></c:url>'>${productDetail.productDetailName}</a>
                                            </h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>
                                            <div class="product-price">
                                            <span class="price">
                                                    $ ${productDetail.productDetailPrice}				</span>
                                                <span class="price-before-discount">$ 0%</span>
                                            </div><!-- /.product-price -->
                                        </div><!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <a data-toggle="tooltip" class="btn btn-primary icon"
                                                           href="${contextPath}/cart/addCart?product_id=${productDetail.id }"
                                                           type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </a>
                                                        <a href="">
                                                            <button class="btn btn-primary cart-btn" type="button">
                                                                Add
                                                                to cart
                                                            </button>
                                                        </a>
                                                    </li>
                                                    <li class="lnk wishlist">
                                                        <a data-toggle="tooltip" class="add-to-cart"
                                                           href="detail.html"
                                                           title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>
                                                    <li class="lnk">
                                                        <a data-toggle="tooltip" class="add-to-cart"
                                                           href="detail.html"
                                                           title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div><!-- /.action -->
                                        </div><!-- /.cart -->
                                    </div><!-- /.product -->
                                </div><!-- /.products -->
                            </div>
                            <!-- /.item -->
                        </c:forEach>
                    </div><!-- /.home-owl-carousel -->
                </section><!-- /.section -->
                <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
            </div><!-- /.homebanner-holder -->
            <!-- ============================================== CONTENT : END ============================================== -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</div>
<!-- /#top-banner-and-menu -->