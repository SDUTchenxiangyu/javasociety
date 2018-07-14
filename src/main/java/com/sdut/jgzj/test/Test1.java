package com.sdut.jgzj.test;

import static org.junit.jupiter.api.Assertions.*;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

class Test1 {
	private ApplicationContext applicationContext = null;
	{
		applicationContext = new ClassPathXmlApplicationContext("application.xml");
	}
	@Test
	void test() {
		DataSource dataSource = applicationContext.getBean(DataSource.class);
		System.out.println(dataSource);
	}

}
