package vn.smartdev.invoice.dao.manager;

import vn.smartdev.invoice.dao.entity.Invoice;
import vn.smartdev.invoice.exception.InvoiceNotFoundException;

import java.util.List;

public interface InvoiceManager {
    List<Invoice> findAll() throws Exception;
    Invoice findById(String id) throws InvoiceNotFoundException;
    void delete(String id) throws InvoiceNotFoundException;
    void save(Invoice invoice) throws Exception;
}
