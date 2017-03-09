package vn.smartdev.product.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import vn.smartdev.product.dao.repository.SendEmail;
import vn.smartdev.product.services.SendEmailServices;

/**
 * Created by Nhat on 28/12/2016.
 */
@Service
public class SendEmailServicesImpl implements SendEmailServices{
    @Autowired
    private SendEmail sendEmail;
    @Override
    public boolean sendEmail(String toEmail, String sendUser) {
        try {
            sendEmail.sendEmail(toEmail,sendUser);
            return true;
        }
        catch (Exception e)
        {
            throw e;
        }
    }
}
