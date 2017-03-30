package vn.smartdev.product.dao.manager;

import vn.smartdev.product.dao.entity.ProductDetail;
import vn.smartdev.product.exception.ProductDetailAlreadyException;
import vn.smartdev.product.exception.ProductDetailNotFoundException;

import java.util.List;

public interface ProductDetailManager {
    List<ProductDetail> getListProductDetail() throws ProductDetailNotFoundException;
    ProductDetail getProductDetail(String id) throws ProductDetailNotFoundException;
    void deleteProductDetail(String id) throws ProductDetailNotFoundException;
    void saveProductDetail(ProductDetail productDetail) throws ProductDetailAlreadyException;

    List<ProductDetail> findTop6ByOrderByCreateByDesc() throws ProductDetailNotFoundException;
    List<ProductDetail> findTop6ByOrderByProductDetailPriceDesc() throws ProductDetailNotFoundException;
    List<ProductDetail> findTop3ByOrderByProductDetailPriceAsc() throws ProductDetailNotFoundException;
    List<ProductDetail> findTop8ByOrderByCreateByAsc() throws ProductDetailNotFoundException;
    List<ProductDetail> findByOrderByProductDetailPriceAsc() throws ProductDetailNotFoundException;
    List<ProductDetail> findByOrderByProductDetailPriceDesc() throws ProductDetailNotFoundException;
    List<ProductDetail> getListProductDetailByProduct(String productId) throws ProductDetailNotFoundException;
}
