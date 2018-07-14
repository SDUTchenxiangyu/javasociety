package com.sdut.jgzj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdut.jgzj.bean.BasicMatch;
import com.sdut.jgzj.dao.BasicMatchDao;
@Service
public class BasicMatchServiceImpl implements BasicMatchService {
	@Autowired
	private BasicMatchDao basicmatchDao;
	@Override
	public void savebasicmatch(String name, String typename) {
		BasicMatch basic = new BasicMatch();
		basic.setName(name);
		basic.setTypematch(typename);
		basicmatchDao.saveBasicMatch(basic);
	}
	@Override
	public List<BasicMatch> findall() {
		List<BasicMatch> basic = basicmatchDao.findall();
		return basic;
	}
	@Override
	public BasicMatch findBasicMatchbyid(Integer id) {
		BasicMatch basic = basicmatchDao.findbasicmatchbyid(id);
		return basic;
	}

}
