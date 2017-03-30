package vn.smartdev.product.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import vn.smartdev.product.dao.entity.Product;
import vn.smartdev.product.dao.entity.ProductDetail;

import java.util.Date;
import java.util.List;

public interface ProductDetailRepository extends JpaRepository<ProductDetail,String>{
    List<ProductDetail> findTop6ByOrderByCreateByDesc();
    List<ProductDetail> findTop6ByOrderByProductDetailPriceDesc();
    List<ProductDetail> findTop3ByOrderByProductDetailPriceAsc();
    List<ProductDetail> findTop8ByOrderByCreateByAsc();
    List<ProductDetail> findByOrderByProductDetailPriceAsc();
    List<ProductDetail> findByOrderByProductDetailPriceDesc();
//    @Query("select p from ProductDetail p where p.productDetailPrice = :productDetailPrice or p.supplyer = :supplyer")
//    public List<ProductDetail> findByProductDetailPriceOrSupplyer(@Param("productDetailPrice") String productDetalPrice,@Param("supplyer") String supplyer);
    //test
    List<ProductDetail> findFirstByProductIdAndCreatedGreaterThanOrderByCreatedDesc(String createBy,Date create);
    List<ProductDetail> findBySupplyerOrderByProductIdAscProductDetailQuantityAsc(String suppler);
    List<ProductDetail> findBySupplyerOrderByProductAscProductDetailQuantityAsc(String suppler);
    //Test Query
    @Query("from ProductDetail p where p.supplyer =:supplyer order by p.product asc,p.productDetailQuantity asc")
    List<ProductDetail> demoQuery(@Param("supplyer") String supplyer);
    //test query
//    @Query("select p  ")
//    List<ProductDetail> testQuery(String createBy,Date create);

}

