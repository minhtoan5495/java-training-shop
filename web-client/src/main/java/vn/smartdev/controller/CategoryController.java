package vn.smartdev.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import vn.smartdev.category.dao.entity.Category;
import vn.smartdev.category.services.CategoryServices;

import java.util.List;

@Controller
@RequestMapping(value = "/admin", method = RequestMethod.GET)
public class CategoryController {

    @Autowired
    private CategoryServices categoryServices;

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String showAll(Model model)
    {
        model.addAttribute("category",new Category());
        return "category";
    }

    @ModelAttribute("categories")
    public List<Category> listAllCategory() {
        List<Category> categories = categoryServices.getListCategory();
        return categories;
    }

    @RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
    public String saveCategory(@RequestParam("categoryName") String categoryName){
        Category category = new Category();
        category.setCategoryName(categoryName);
        categoryServices.saveCategory(category);
        return "redirect:category";
    }

    @RequestMapping(value = "/deleteCategory", method = RequestMethod.GET)
    public String deleteCategory(@RequestParam("id") String categoryId){
        categoryServices.deleteCategory(categoryId);
        return "redirect:category";
    }

}
