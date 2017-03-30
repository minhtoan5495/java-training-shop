package vn.smartdev.product.dao.manager;
import vn.smartdev.product.dao.entity.Product;
import vn.smartdev.product.exception.ProductAlreadyException;
import vn.smartdev.product.exception.ProductNotFoundException;

import java.util.List;
public interface ProductManager {
  List<Product> getListProduct() throws ProductNotFoundException;
  Product getProduct(String id) throws ProductNotFoundException;
  void saveProduct(Product product) throws ProductAlreadyException;
  void deleteProduct(String id) throws ProductNotFoundException;
}
