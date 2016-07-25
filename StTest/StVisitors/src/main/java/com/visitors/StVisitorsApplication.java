package com.visitors;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan("com.visitors")
public class StVisitorsApplication  {

	public static void main(String[] args) {
		SpringApplication.run(StVisitorsApplication.class, args);

	}
}
