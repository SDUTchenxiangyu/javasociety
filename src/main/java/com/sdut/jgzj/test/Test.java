package com.sdut.jgzj.test;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.Date;

import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sdut.jgzj.bean.Students;

class Test {

	
	private ApplicationContext cxy = null;
	private Transaction transaction = null;
	@Autowired
	private SessionFactory sessionFactory;
	{
		cxy = new ClassPathXmlApplicationContext("application.xml");
	}
	@org.junit.jupiter.api.Test
	public void test() throws SQLException {
//		Configuration configuration = new Configuration().configure();
//		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
//		sessionFactory = configuration.buildSessionFactory(serviceRegistry);
//		Session session = sessionFactory.openSession();
//		transaction = session.beginTransaction();
//		Students student = new Students("陈翔宇", "15110902058", "17864309139", "abc970404227", "土木1503");
//		Match match = new Match("纸牌搭楼", new Date(), new Date(), "东大厅", 1, "个人", 1, true);
//		session.save(match);
//		transaction.commit();
//		session.close();
//		sessionFactory.close();
	}
}
