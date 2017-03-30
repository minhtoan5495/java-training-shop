package vn.smartdev.product.dao.manager;

import vn.smartdev.product.dao.entity.Discount;
import vn.smartdev.product.dao.entity.Product;
import vn.smartdev.product.exception.DiscountAlreadyException;
import vn.smartdev.product.exception.DiscountNotFoundException;

import java.util.List;

public interface DiscountManager {
    Discount findByProduct(Product product) throws DiscountNotFoundException;
    List<Discount> findAll() throws DiscountNotFoundException;
    void delete(String discountID) throws DiscountNotFoundException;
    void save(Discount discount) throws DiscountAlreadyException;
}
