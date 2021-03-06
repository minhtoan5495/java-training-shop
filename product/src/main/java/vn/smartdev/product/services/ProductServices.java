package vn.smartdev.product.services;

import vn.smartdev.product.dao.entity.Product;
import vn.smartdev.product.dao.model.ProductModel;
import vn.smartdev.product.exception.ProductAlreadyException;
import vn.smartdev.product.exception.ProductNotFoundException;

import java.util.List;

public interface ProductServices {
    List<Product> getListProduct() ;
    Product getProduct(String id) ;
    void deleteProduct(String id);
    void createProduct(ProductModel productModel);

}
