package vn.smartdev.product.servicesImpl;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.stereotype.Service;import vn.smartdev.product.dao.entity.Discount;import vn.smartdev.product.dao.entity.Product;import vn.smartdev.product.dao.repository.DiscountRepository;import vn.smartdev.product.services.DiscountServices;import java.util.List;/** * Created by Nguyen on 16/12/2016. */@Servicepublic class DiscountServicesImpl implements DiscountServices {    @Autowired    DiscountRepository discountRepository;    @Override    public Discount findByProduct(Product product) {        return discountRepository.findByProduct(product);    }    @Override    public List<Discount> listAll() {        return discountRepository.findAll();    }    @Override    public void deleteDiscount(String discountID) {        discountRepository.delete(discountID);    }    @Override    public void save(Discount discount) {        discountRepository.save(discount);    }}