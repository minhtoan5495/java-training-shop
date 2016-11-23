package com.java.training.core.util.bean;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class BeanUtil implements ApplicationContextAware {
    private static ApplicationContext context;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        BeanUtil.context = applicationContext;
    }

    public static <Bean> Bean getBean(String beanName) {
        return (Bean) context.getBean(beanName);
    }

    public static <Bean> Bean getBean(Class<Bean> beanClass) {
        return (Bean) context.getBean(beanClass);
    }
}
