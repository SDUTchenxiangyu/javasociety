package com.sdut.jgzj.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sdut.jgzj.bean.TypeMatch;
@Repository
public class TypeMatchDaoImpl implements TypeMatchDao {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession() {
		return sessionFactory.openSession();
	}
	@Override
	public TypeMatch findtypebyId(Integer id) {
		String hql = "FROM TypeMatch WHERE ID = " + id;
		Query query = getSession().createQuery(hql);
		TypeMatch typematch = (TypeMatch) query.uniqueResult();
		return typematch;
	}

}
