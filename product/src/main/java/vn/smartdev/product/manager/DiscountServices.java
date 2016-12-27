package vn.smartdev.product.manager;import org.springframework.stereotype.Service;import vn.smartdev.product.dao.entity.Discount;import vn.smartdev.product.dao.entity.Product;import vn.smartdev.product.dao.model.DiscountModel;import java.util.List;/** * Created by Nguyen on 16/12/2016. */public interface DiscountServices {    Discount findByProduct(Product product);    List<Discount> listAll();    void deleteDiscount(String discountID);    void save(DiscountModel discountModel);}