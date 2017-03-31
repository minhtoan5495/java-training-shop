package vn.smartdev.category.dao.entity;

import vn.smartdev.core.jpa.auditing.AbstractAuditableEntity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.UUID;


@Entity
@Table(name = "category")
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category extends AbstractAuditableEntity<String> implements Serializable {
	private static final long serialVersionUID = 3401746015469813185L;

	@Id
	@Column(name = "category_id")
	private String id;

	@Column(name="category_name")
	private String categoryName;

	public Category(String categoryName) {
		this.categoryName = categoryName;
	}

	public Category() {
		setId(UUID.randomUUID().toString());
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(this.getClass().getName() + "-");
		sb.append("  categoryName=" + getCategoryName());
		sb.append("  lastUpdated=" + getLastUpdated());
		sb.append("  lastUpdateBy=" + getLastUpdatedBy());
		sb.append("  created=" + getCreated());
		sb.append("  createdBy=" + getCreateBy());
		return sb.toString();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}