package com.sdut.jgzj.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sdut.jgzj.bean.SdutentMatch;
@Repository
public class SdutentMatchDaoImpl implements SdutentMatchDao {
	@Autowired
	private SessionFactory sessionFactory;
	private	Session getSession() {
		return sessionFactory.openSession();
	}
	@Override
	public void saveperson(SdutentMatch sdutentmatch) {
		getSession().save(sdutentmatch);
	}

	@Override
	public void savetame(List<SdutentMatch> list) {
		for(SdutentMatch sdutent:list) {
			saveperson(sdutent);
		}
	}
	@Override
	public Integer findmaxtame(String matchid) {
		String hql = "SELECT MAX(tame) FROM SdutentMatch WHERE CONTEST = "+matchid;
		Query query = getSession().createQuery(hql);
		Integer max = (Integer) query.uniqueResult();
		return max;
	}
	@Override
	public SdutentMatch findsdutentmatchbymatchid(String sdutentid, Integer matchid) {
		String hql = "FROM SdutentMatch WHERE CONTEST = " + matchid + " AND SDUTENTID = " + sdutentid;
		Query query = getSession().createQuery(hql);
		SdutentMatch sdutent = (SdutentMatch) query.uniqueResult();
		return sdutent;
	}

}
