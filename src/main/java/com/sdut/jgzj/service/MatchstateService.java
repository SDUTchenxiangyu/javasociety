package com.sdut.jgzj.service;

import java.util.Date;
import java.util.List;

import com.sdut.jgzj.bean.Matchstate;

public interface MatchstateService {
	public void saveMatch(String name,Date opentime,Date endtime,String place,Integer matchClass,String personortime,Integer timenumber,boolean openornot,Integer typematch);
	public List<Matchstate> findallbyMatchstate();
}
