package vn.smartdev.controller;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.stereotype.Controller;import org.springframework.ui.Model;import org.springframework.web.bind.annotation.ModelAttribute;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RequestMethod;import org.springframework.web.bind.annotation.RequestParam;import vn.smartdev.product.dao.entity.Discount;import vn.smartdev.product.dao.entity.Product;import vn.smartdev.product.dao.model.DiscountModel;import vn.smartdev.product.services.DiscountServices;import vn.smartdev.product.services.ProductServices;import javax.servlet.http.HttpServletRequest;import javax.validation.Valid;import java.util.List;/** * Created by Nguyen on 17/12/2016. */@Controller@RequestMapping(value = "/admin", method = RequestMethod.GET)public class DiscountController {    @Autowired    DiscountServices discountServices;    @Autowired    ProductServices productServices;    @RequestMapping(value = "/discount", method = RequestMethod.GET)    public String showAll(Model model)    {        List<Discount> discounts = discountServices.findAll();        model.addAttribute("listDiscount", discounts);        model.addAttribute("discountModel", new DiscountModel());        return "viewDiscountPage";    }    @ModelAttribute("products")    public List<Product> listAllProduct() {        List<Product> products = productServices.getListProduct();        return products;    }    @RequestMapping(value = "/deleteDiscount", method = RequestMethod.GET)    public String deleteDiscount(@RequestParam("id") String discountID){        discountServices.deleteDiscount(discountID);        return "redirect:discount";    }    @RequestMapping(value = "/saveDiscount", method = RequestMethod.POST)    public String saveDiscount(@Valid DiscountModel discountModel, HttpServletRequest request){        String [] products = request.getParameterValues("product");        for (String productId : products){            discountModel.setProductId(productId);            discountServices.save(discountModel);        }        return "redirect:discount";    }}