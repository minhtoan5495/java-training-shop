package vn.smartdev.product.dao.model;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.IOException;
import java.util.Properties;

/**
 * Created by Nhat on 05/12/2016.
 */
public class ProductModel {

    private String productId;
    private String productName;
    private String productDetailName;
    private String categoryId;
    private int productStatus;
    private String description;
    private float price;
    private int quantity;
    private String supplyer;
    private String urlImage;

    private MultipartFile file;
    public ProductModel() {
        Properties prop = new Properties();
        try {

            prop.load(getClass().getClassLoader().getResourceAsStream("images.properties"));

        } catch (IOException e) {
            e.printStackTrace();
        }
        this.urlImage = prop.getProperty("local.imagesUpload.directory");
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getSupplyer() {
        return supplyer;
    }

    public void setSupplyer(String supplyer) {
        this.supplyer = supplyer;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProductDetailName() {
        return productDetailName;
    }

    public void setProductDetailName(String productDetailName) {
        this.productDetailName = productDetailName;
    }
    //initialized object applicationContext;
    public void setUrlImage(String urlImage)
    {
        this.urlImage = urlImage;
    }
    public String getUrlImage() {
        return urlImage;
    }


}
