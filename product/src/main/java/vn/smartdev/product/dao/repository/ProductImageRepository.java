package vn.smartdev.product.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.smartdev.product.dao.entity.ProductImage;

public interface ProductImageRepository extends JpaRepository<ProductImage,String>{
}
