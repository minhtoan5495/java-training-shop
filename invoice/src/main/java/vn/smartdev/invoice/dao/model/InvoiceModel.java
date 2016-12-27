package vn.smartdev.invoice.dao.model;import org.hibernate.validator.constraints.Email;import org.hibernate.validator.constraints.NotBlank;import vn.smartdev.invoice.dao.entity.InvoiceDetail;import vn.smartdev.invoice.dao.entity.Status;import vn.smartdev.user.dao.validator.Phone;import javax.validation.constraints.Size;import java.io.Serializable;import java.util.Date;import java.util.List;/** * Created by Nguyen on 12/12/2016. */public class InvoiceModel implements Serializable {    private static final long serialVersionUID = 1L;    private String id;    private int discount;    @NotBlank    private String address;    @Email    @NotBlank    private String email;    @Phone    private String phone;    private String username;    @Size(min = 3, max = 5)    private String firstName;    @Size(min = 3, max = 5)    private String lastName;    @NotBlank    private String city;    private Status status;    private Date invoiceDate;    private List<InvoiceDetail> invoiceDetails;    public InvoiceModel() {    }    public InvoiceModel(String id, int discount, String address, String email, String phone, String username, String firstName, String lastName, String city, Status status, Date invoiceDate) {        this.id = id;        this.discount = discount;        this.address = address;        this.email = email;        this.phone = phone;        this.username = username;        this.firstName = firstName;        this.lastName = lastName;        this.city = city;        this.status = status;        this.invoiceDate = invoiceDate;    }    public String getAddress() {        return address;    }    public void setAddress(String address) {        this.address = address;    }    public String getEmail() {        return email;    }    public void setEmail(String email) {        this.email = email;    }    public String getPhone() {        return phone;    }    public void setPhone(String phone) {        this.phone = phone;    }    public String getUsername() {        return username;    }    public void setUsername(String username) {        this.username = username;    }    public String getFirstName() {        return firstName;    }    public void setFirstName(String firstName) {        this.firstName = firstName;    }    public String getLastName() {        return lastName;    }    public void setLastName(String lastName) {        this.lastName = lastName;    }    public String getCity() {        return city;    }    public void setCity(String city) {        this.city = city;    }    public Status getStatus() {        return status;    }    public void setStatus(Status status) {        this.status = status;    }    public Date getInvoiceDate() {        return invoiceDate;    }    public void setInvoiceDate(Date invoiceDate) {        this.invoiceDate = invoiceDate;    }    public List<InvoiceDetail> getInvoiceDetails() {        return invoiceDetails;    }    public void setInvoiceDetails(List<InvoiceDetail> invoiceDetails) {        this.invoiceDetails = invoiceDetails;    }    public int getDiscount() {        return discount;    }    public void setDiscount(int discount) {        this.discount = discount;    }    public String getId() {        return id;    }    public void setId(String id) {        this.id = id;    }}