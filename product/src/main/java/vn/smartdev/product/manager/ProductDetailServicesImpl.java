package vn.smartdev.product.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.smartdev.category.dao.entity.Category;
import vn.smartdev.category.dao.repository.CategoryRepository;
import vn.smartdev.product.dao.entity.Product;
import vn.smartdev.product.dao.entity.ProductDetail;
import vn.smartdev.product.dao.entity.ProductImage;
import vn.smartdev.product.dao.model.ProductDetailModel;
import vn.smartdev.product.dao.model.ProductModel;
import vn.smartdev.product.dao.repository.ProductDetailRepository;
import vn.smartdev.product.dao.repository.ProductImageRepository;
import vn.smartdev.product.dao.repository.ProductRepository;

import java.util.List;

/**
 * Created by Nhat on 29/11/2016.
 */
@Service
public class ProductDetailServicesImpl implements ProductDetailServices{
    @Autowired
    private ProductDetailRepository productDetailRepository;
    @Autowired
    private ProductImageRepository productImageRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<ProductDetail> getListProductDetail() {
        return productDetailRepository.findAll();
    }

    @Override
    public ProductDetail getProductDetail(String id) {
        return productDetailRepository.findOne(id);
    }

    @Override
    public double getTotal(String id) {
        ProductDetail productDetail = productDetailRepository.getOne(id);

        return productDetail.getProductDetailPrice() * productDetail.getProductDetailQuantity();
    }

    @Override
    public void deleteProductDetail(String id) {
        productDetailRepository.delete(id);
    }

    @Override
    public void saveProductDetail(ProductDetail productDetail) {
        productDetailRepository.save(productDetail);
    }

    @Override
    public boolean createProductDetail(ProductModel productModel) {
        try
        {
            Category category = categoryRepository.findOne(productModel.getCategoryId());
            //Product
            Product product = productRepository.getOne(productModel.getProductId());

            //productDetail
            ProductDetail productDetail = new ProductDetail();
            productDetail.setProductDetailCode("1");
            productDetail.setProductDetailStatus(productModel.getProductStatus());
            productDetail.setProductDetailPrice(productModel.getPrice());
            productDetail.setProductDetailQuantity(productModel.getQuantity());
            productDetail.setDescription(productDetail.getDescription());
            productDetail.setSupplyer(productDetail.getSupplyer());
            productDetail.setProduct(product);
            productDetailRepository.save(productDetail);

            //productImage
            ProductImage productImage = new ProductImage();
            productImage.setUrl(productModel.getFile().getOriginalFilename());
            productImage.setProductDetail(productDetail);

            productImageRepository.save(productImage);
            return true;
        }
        catch (Exception e)
        {
            return false;
        }
    }

    @Override
    public boolean updateProductDetail(ProductDetailModel productDetailModel) {
        ProductDetail productDetail = productDetailRepository.findOne(productDetailModel.getId());
        productDetail.setDescription(productDetailModel.getDescription());
        productDetail.setProductDetailPrice(productDetailModel.getProductDetailPrice());
        productDetail.setProductDetailQuantity(productDetailModel.getProductDetailQuantity());
        productDetail.setSupplyer(productDetailModel.getSupplyer());

        productDetailRepository.save(productDetail);
        return true;
    }

}
