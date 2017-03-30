package vn.smartdev.product.dao.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import vn.smartdev.category.dao.repository.CategoryRepository;
import vn.smartdev.product.dao.entity.Product;
import vn.smartdev.product.dao.repository.ProductDetailRepository;
import vn.smartdev.product.dao.repository.ProductImageRepository;
import vn.smartdev.product.dao.repository.ProductRepository;

import java.util.List;

@Service
public class ProductManagerImpl implements ProductManager{

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> getListProduct() {
        return productRepository.findAll();
    }
    @Override
    public Product getProduct(String id) {
        return productRepository.findOne(id);
    }
    @Override
    public void saveProduct(Product product){
        productRepository.save(product);
    }
    @Override
    public void deleteProduct(String id) {
        productRepository.delete(id);
    }
}
