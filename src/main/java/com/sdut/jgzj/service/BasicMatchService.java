package com.sdut.jgzj.service;

import java.util.List;

import com.sdut.jgzj.bean.BasicMatch;

public interface BasicMatchService {
	public void savebasicmatch(String name,String typename);
	public List<BasicMatch> findall();
	public BasicMatch findBasicMatchbyid(Integer id);
}
