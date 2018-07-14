package com.sdut.jgzj.dao;

import java.util.List;

import com.sdut.jgzj.bean.BasicMatch;

public interface BasicMatchDao {
	public void saveBasicMatch(BasicMatch basicMatch);
	public List<BasicMatch> findall();
	public BasicMatch findbasicmatchbyid(Integer id);
}
