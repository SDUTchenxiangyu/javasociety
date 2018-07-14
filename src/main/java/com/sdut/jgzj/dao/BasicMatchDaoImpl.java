package com.sdut.jgzj.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sdut.jgzj.bean.BasicMatch;
@Repository
public class BasicMatchDaoImpl implements BasicMatchDao {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession() {
		return sessionFactory.openSession();
	}
	@Override
	public void saveBasicMatch(BasicMatch basicMatch) {
		getSession().save(basicMatch);
	}
	@Override
	public List<BasicMatch> findall() {
		String hel = "FROM BasicMatch";
		Query query = getSession().createQuery(hel);
		List<BasicMatch> basic = query.list();
		return basic;
	}
	@Override
	public BasicMatch findbasicmatchbyid(Integer id) {
		String hql = "FROM BasicMatch WHERE ID = " + id;
		Query query = getSession().createQuery(hql);
		BasicMatch basic = (BasicMatch) query.uniqueResult();
		return basic;
	}

}
