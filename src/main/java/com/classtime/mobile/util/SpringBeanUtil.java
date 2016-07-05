package com.classtime.mobile.util;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;

/**
 * Created by wu on 2015/7/16.
 */
public class SpringBeanUtil  implements BeanFactoryAware {

    private static BeanFactory beanFactory = null;

    private static SpringBeanUtil springBeanUtil = null;

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = beanFactory;
    }

    public static BeanFactory getBeanFactory() {
        return beanFactory;
    }

    public static SpringBeanUtil getInstance() {
        if (springBeanUtil == null)
            springBeanUtil = (SpringBeanUtil) beanFactory.getBean("springBeanUtil");
        return springBeanUtil;
    }
}
