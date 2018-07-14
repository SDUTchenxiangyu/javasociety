package com.sdut.jgzj.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sdut.jgzj.bean.Matchstate;

@Repository
public class MatchstateDaoImpl implements MatchstateDao {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession() {
		return sessionFactory.openSession();
	}
	@Override
	public void saveMatch(Matchstate match) {
		getSession().save(match);
	}
	@Override
	public List<Matchstate> findMatchstateAll() {
		Query query = getSession().createQuery("From Matchstate");
		List<Matchstate> list = query.list();
		return list;
	}

}
