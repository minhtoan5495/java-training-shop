package vn.smartdev.product.dao.model;


import vn.smartdev.core.jpa.auditing.AbstractAuditableEntity;
import vn.smartdev.product.dao.entity.Product;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Date;
import java.util.List;
import java.util.UUID;


/**
 * The persistent class for the discount database table.
 */
public class DiscountModel implements Serializable {
    private static final long serialVersionUID = 1L;

    private Date startDate;

    private Date endDate;

    private int percent;

    //	bi-directional many-to-one association to Category
    private String product_id;

    public DiscountModel() {
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

 

    public int getPercent() {
		return percent;
	}

	public void setPercent(int percent) {
		this.percent = percent;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	
}