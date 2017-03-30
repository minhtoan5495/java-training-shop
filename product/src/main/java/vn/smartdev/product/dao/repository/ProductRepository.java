package vn.smartdev.product.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.smartdev.category.dao.entity.Category;
import vn.smartdev.product.dao.entity.Product;

public interface ProductRepository extends JpaRepository<Product,String>{
}
