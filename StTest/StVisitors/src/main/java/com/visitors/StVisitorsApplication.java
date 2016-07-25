package com.visitors;

import org.springframework.beans.BeansException;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration
public class StVisitorsApplication implements CommandLineRunner, ApplicationContextAware {
	private ApplicationContext applicationContext;
	public static void main(String[] args) {
		SpringApplication.run(StVisitorsApplication.class, args);

	}

	@Override
	public void run(String... strings) throws Exception {
		applicationContext.getBean(TestDbClass.class).run();
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext = applicationContext;
	}
}
