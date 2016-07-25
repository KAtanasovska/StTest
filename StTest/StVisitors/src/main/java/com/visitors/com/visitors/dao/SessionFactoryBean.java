package com.visitors.com.visitors.dao;

import com.visitors.Visitor;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
/**
 * Created by Kristinata on 7/25/2016.
 */
@Configuration
public class SessionFactoryBean {

    @Bean
    public SessionFactory getSessionFactory() {
        org.hibernate.cfg.Configuration configuration = new org.hibernate.cfg.Configuration();
        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                .applySettings(configuration.getProperties()).build();
        SessionFactory sessionFactory = configuration.addAnnotatedClass(Visitor.class)
                .buildSessionFactory(serviceRegistry);
        return sessionFactory;
    }
}
