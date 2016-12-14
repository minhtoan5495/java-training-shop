package vn.smartdev.controller;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.stereotype.Controller;import org.springframework.ui.ModelMap;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RequestMethod;import org.springframework.web.bind.annotation.RequestParam;import vn.smartdev.invoice.dao.model.CartModel;import vn.smartdev.product.dao.entity.ProductDetail;import vn.smartdev.product.manager.ProductDetailServices;import javax.servlet.http.HttpServletRequest;import javax.servlet.http.HttpSession;import java.util.ArrayList;import java.util.List;/** * Created by Nguyen on 11/12/2016. */@Controllerpublic class CartController {    /**     * Simply selects the home view to render by returning its name.     */    @Autowired    ProductDetailServices productDetailServices;    @RequestMapping(value = "/cart/remove", method = RequestMethod.GET)    public String cartRemove(@RequestParam(value = "product_id") String id, HttpSession session){        @SuppressWarnings("unchecked")        List<CartModel> carts = (List<CartModel>)session.getAttribute("cartSession");        if(carts != null){            int index = isExisting(id, session);            carts.remove(index);        }        session.setAttribute("total", getTotal(carts));        session.setAttribute("cartSession", carts);        return "cartPage";    }    @RequestMapping(value = "/cart/update", method = RequestMethod.POST)    public String cartUpdate(HttpServletRequest request, HttpSession session){        @SuppressWarnings("unchecked")        List<CartModel> carts = (List<CartModel>)session.getAttribute("cartSession");        String []quantity = request.getParameterValues("quantity");        for(int i = 0; i < carts.size(); i++){            carts.get(i).setQuantity(Integer.parseInt(quantity[i]));        }        session.setAttribute("total", getTotal(carts));        session.setAttribute("cartSession", carts);        return "cartPage";    }    @RequestMapping(value = "/cart", method = RequestMethod.GET)    public String cart(ModelMap modelMap) {        return "cartPage";    }    @RequestMapping(value = "/cart/addCart", method = RequestMethod.GET)    public String cartAdd(@RequestParam("product_id")String id,ModelMap modelMap,                          HttpSession session) {        ProductDetail productDetail = productDetailServices.getProductDetail(id);        int quantity;        if(session.getAttribute("cartSession")== null){            List<CartModel> carts = new ArrayList<>();            quantity = 1;            carts.add(new CartModel(productDetail,quantity));            session.setAttribute("total", getTotal(carts));            session.setAttribute("cartSession", carts);        }else{            @SuppressWarnings("unchecked")            List<CartModel> carts = (List<CartModel>)session.getAttribute("cartSession");            quantity = 1;            int index = isExisting(id, session);            if(index == -1){                carts.add(new CartModel(productDetail,quantity));            }else{                carts.get(index).setQuantity(carts.get(index).getQuantity() + 1);            }            session.setAttribute("total", getTotal(carts));            session.setAttribute("cartSession", carts);        }        return "cartPage";    }    private int isExisting(String id, HttpSession session){        @SuppressWarnings("unchecked")        List<CartModel> carts = (List<CartModel>)session.getAttribute("cartSession");        for(int i = 0; i < carts.size(); i++){            if(carts.get(i).getProductDetail().getId().equals(id)){                return i;            }        }        return -1;    }    public float getTotal(List<CartModel> list){        float total = 0;        for(CartModel cart : list){            total += cart.getQuantity() * cart.getProductDetail().getProductDetailPrice();        }        return total;    }}