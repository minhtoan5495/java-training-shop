package vn.smartdev.category.dao.manager;

import vn.smartdev.category.dao.entity.Category;

import java.util.List;

public interface CategoryManager {
    List<Category> getListCategory();
    Category getCategory(String id);
    void saveCategory(Category category);
    void deleteCategory(String id);
}
