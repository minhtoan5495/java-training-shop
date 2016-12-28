package vn.smartdev.product.dao.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import vn.smartdev.product.services.SendEmailServices;

/**
 * Created by Nhat on 27/12/2016.
 */
public class SendEmail {
    private String from;
    private String subjectOrder;
    private String msgOrder;
    private String subjectRegistration;
    private String msgRegistration;

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getSubjectOrder() {
        return subjectOrder;
    }

    public void setSubjectOrder(String subjectOrder) {
        this.subjectOrder = subjectOrder;
    }

    public String getMsgOrder() {
        return msgOrder;
    }

    public void setMsgOrder(String msgOrder) {
        this.msgOrder = msgOrder;
    }

    public String getSubjectRegistration() {
        return subjectRegistration;
    }

    public void setSubjectRegistration(String subjectRegistration) {
        this.subjectRegistration = subjectRegistration;
    }

    public String getMsgRegistration() {
        return msgRegistration;
    }

    public void setMsgRegistration(String msgRegistration) {
        this.msgRegistration = msgRegistration;
    }

    public MailSender getMailSender() {
        return mailSender;
    }

//    @Autowired
    private MailSender mailSender;
    public void setMailSender(MailSender mailSender) {
        this.mailSender = mailSender;
    }

    public boolean sendEmail(String toEmail, String sendUser) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();

            message.setFrom(this.from);
            message.setTo(toEmail);
            if(sendUser.equals("order"))
            {
                message.setSubject(this.subjectOrder);
                message.setText(this.msgOrder);
            }
            else
            {
                message.setSubject(this.subjectRegistration);
                message.setText(this.msgRegistration+" : "+sendUser);
            }

            mailSender.send(message);
            return true;
        }
        catch (Exception e)
        {
            throw e;
        }
    }
}
