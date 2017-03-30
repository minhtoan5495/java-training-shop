package vn.smartdev.category.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.smartdev.category.dao.entity.Category;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category,String>{
}
