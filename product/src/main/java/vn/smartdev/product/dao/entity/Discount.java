package vn.smartdev.product.dao.entity;import vn.smartdev.core.jpa.auditing.AbstractAuditableEntity;import java.io.Serializable;import javax.persistence.*;import java.sql.Date;import java.util.List;import java.util.UUID;/** * The persistent class for the discount database table. */@Entity@Table(name = "discount")@NamedQuery(name = "Discount.findAll", query = "SELECT d FROM Discount d")public class Discount extends AbstractAuditableEntity<String> implements Serializable {    private static final long serialVersionUID = -7050146901691554534L;    @Id    @Column(name = "discount_id")    private String id;    private Date startDate;    private Date endDate;    private int percent;    //	bi-directional many-to-one association to Category    @OneToOne(targetEntity = Product.class)    @JoinColumn(name="product_id")    private Product product;    public Discount() {        setId(UUID.randomUUID().toString());    }    public Date getStartDate() {        return startDate;    }    public void setStartDate(Date startDate) {        this.startDate = startDate;    }    public Date getEndDate() {        return endDate;    }    public void setEndDate(Date endDate) {        this.endDate = endDate;    }    public int getPercent() {		return percent;	}	public void setPercent(int percent) {		this.percent = percent;	}	public Product getProduct() {        return product;    }    public void setProduct(Product product) {        this.product = product;    }    public String getId() {        return id;    }    public void setId(String id) {        this.id = id;    }}