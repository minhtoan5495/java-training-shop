<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%--<script type="text/javascript">
    function incrementValue() {
        var value = parseInt(document.getElementById('quantity').value, 10);
        value = isNaN(value) ? 0 : value;
        if (value < 10) {
            value++;
            document.getElementById('quantity').value = value;
        }
    }
    function decrementValue() {
        var value = parseInt(document.getElementById('quantity').value, 10);
        value = isNaN(value) ? 0 : value;
        if (value > 1) {
            value--;
            document.getElementById('quantity').value = value;
        }

    }
</script>--%>
<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="#">Home</a></li>
                <li class='active'>Shopping Cart</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div>
<!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
    <div class="container">
        <div class="row ">
            <div class="shopping-cart">
                <div class="shopping-cart-table ">
                    <div class="table-responsive">
                        <form action="${contextPath }/cart/update" method="POST">
                            <table class="table" id="shopping-cart-table">
                                <thead>
                                <tr>
                                    <th class="cart-romove item">Remove</th>
                                    <th class="cart-description item">Image</th>
                                    <th class="cart-product-name item">Product Name</th>
                                    <th class="cart-qty item">Quantity</th>
                                    <th class="cart-sub-total item">Price</th>
                                    <th class="cart-total last-item">Total</th>
                                </tr>
                                </thead><!-- /thead -->
                                <tfoot>
                                <tr>
                                    <td colspan="7">
                                        <div class="shopping-cart-btn">
							    <span class="">
								    <a href="/" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>
								    <input type="submit" value="Update shopping cart"
                                        class="btn btn-upper btn-primary pull-right outer-right-xs"/>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							    </span>
                                        </div><!-- /.shopping-cart-btn -->
                                    </td>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="listCart" items="${sessionScope.cartSession}">
                                    <tr>
                                        <td class="romove-item"><a
                                                href="${contextPath }/cart/remove?product_id=${listCart.productDetail.id}"
                                                title="cancel" class="icon"><i
                                                class="fa fa-trash-o"></i></a></td>
                                        <td class="cart-image">
                                            <a class="entry-thumbnail" href="detail.html">
                                                <img src="${contextPath }/resource/images/${listCart.productDetail.productImages.get(0).url}"
                                                     alt="">
                                            </a>
                                        </td>
                                        <td class="cart-product-name-info">
                                            <h4 class='cart-product-description'><a
                                                    href="detail.html">${listCart.productDetail.productDetailCode}</a>
                                            </h4>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="rating rateit-small"></div>
                                                </div>
                                                <div class="col-sm-8">
                                                    <div class="reviews">
                                                        (06 Reviews)
                                                    </div>
                                                </div>
                                            </div><!-- /.row -->
                                            <div class="cart-product-info">
                                                <span class="product-color">COLOR:<span>Blue</span></span>
                                            </div>
                                        </td>
                                        <td class="cart-product-quantity">
                                            <div class="quant-input">
                                                <div class="arrows">
                                                    <div class="arrow plus gradient"><span class="ir"><i
                                                            class="icon fa fa-sort-asc"
                                                    ></i></span></div>
                                                    <div class="arrow minus gradient"><span class="ir"><i
                                                            class="icon fa fa-sort-desc"
                                                    ></i></span></div>
                                                </div>
                                                <input type="text" id="quantity" aria-valuemax="10" aria-valuemin="1" maxlength="2" name="quantity"
                                                       value="${listCart.quantity}">
                                            </div>
                                        </td>
                                        <td class="cart-product-sub-total"><span
                                                class="cart-sub-total-price">${listCart.productDetail.productDetailPrice}</span>
                                        </td>
                                        <td class="cart-product-grand-total"><span
                                                class="cart-grand-total-price">${listCart.productDetail.productDetailPrice * listCart.quantity}</span>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody><!-- /tbody -->
                            </table><!-- /table -->
                        </form>
                    </div>
                </div><!-- /.shopping-cart-table -->
                <div class="col-md-4 col-sm-12 estimate-ship-tax">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                <span class="estimate-title">Estimate shipping and tax</span>
                                <p>Enter your destination to get shipping and tax.</p>
                            </th>
                        </tr>
                        </thead><!-- /thead -->
                        <tbody>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <label class="info-title control-label">Country <span>*</span></label>
                                    <select class="form-control unicase-form-control selectpicker">
                                        <option>--Select options--</option>
                                        <option>India</option>
                                        <option>SriLanka</option>
                                        <option>united kingdom</option>
                                        <option>saudi arabia</option>
                                        <option>united arab emirates</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="info-title control-label">State/Province <span>*</span></label>
                                    <select class="form-control unicase-form-control selectpicker">
                                        <option>--Select options--</option>
                                        <option>TamilNadu</option>
                                        <option>Kerala</option>
                                        <option>Andhra Pradesh</option>
                                        <option>Karnataka</option>
                                        <option>Madhya Pradesh</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="info-title control-label">Zip/Postal Code</label>
                                    <input type="text" class="form-control unicase-form-control text-input"
                                           placeholder="">
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn-upper btn btn-primary">GET A QOUTE</button>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div><!-- /.estimate-ship-tax -->

                <div class="col-md-4 col-sm-12 estimate-ship-tax">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                <span class="estimate-title">Discount Code</span>
                                <p>Enter your coupon code if you have one..</p>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <input type="text" class="form-control unicase-form-control text-input"
                                           placeholder="You Coupon..">
                                </div>
                                <div class="clearfix pull-right">
                                    <button type="submit" class="btn-upper btn btn-primary">APPLY COUPON</button>
                                </div>
                            </td>
                        </tr>
                        </tbody><!-- /tbody -->
                    </table><!-- /table -->
                </div><!-- /.estimate-ship-tax -->

                <div class="col-md-4 col-sm-12 cart-shopping-total">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                <div class="cart-grand-total">
                                    Total<span class="inner-left-md">${sessionScope.total}</span>
                                </div>
                            </th>
                        </tr>
                        </thead><!-- /thead -->
                        <tbody>
                        <tr>
                            <td>
                                <div class="cart-checkout-btn pull-right">
                                    <a type="submit" href="${contextPath}/checkout"
                                       class="btn btn-primary checkout-btn">PROCCED TO CHEKOUT</a>
                                    <span class="">Checkout with multiples address!</span>
                                </div>
                            </td>
                        </tr>
                        </tbody><!-- /tbody -->
                    </table><!-- /table -->
                </div><!-- /.cart-shopping-total -->            </div><!-- /.shopping-cart -->
        </div> <!-- /.row -->
    </div><!-- /.container -->
</div>
<!-- /.body-content -->
