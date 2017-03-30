package vn.smartdev.product.services;

import vn.smartdev.product.dao.entity.ProductImage;
import vn.smartdev.product.dao.model.ProductModel;

import java.util.List;

public interface ProductImageServices {
    List<ProductImage> getListProductImage();
    ProductImage getProductImage(String id);
    void saveProductImage(ProductImage productImage);
    void deleteProductImage(String id);
    void uploadFile(ProductModel productModel);
}
