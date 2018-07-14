package com.sdut.jgzj.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdut.jgzj.bean.Matchstate;
import com.sdut.jgzj.dao.MatchstateDao;
@Service
public class MatchstateServiceImpl implements MatchstateService {
	
	@Autowired
	private MatchstateDao matchstateDao;
	@Override
	public void saveMatch(String name, Date opentime, Date endtime, String place, Integer matchClass,
			String personortime, Integer timenumber, boolean openornot,Integer typematch) {
		Matchstate match = new Matchstate();
		match.setCloseTime(endtime);
		match.setMatchClass(matchClass);
		match.setName(name);
		match.setOpenorclose(openornot);
		match.setOpenTime(opentime);
		match.setPlace(place);
		match.setTime_number(timenumber);
		match.setTimeorperson(personortime);
		match.setTypematch(typematch);
		matchstateDao.saveMatch(match);
	}
	@Override
	public List<Matchstate> findallbyMatchstate() {
		List<Matchstate> match = matchstateDao.findMatchstateAll();
		return match;
	}

}
