package com.sdut.jgzj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdut.jgzj.bean.SdutentMatch;
import com.sdut.jgzj.dao.SdutentMatchDao;
@Service
public class SdutentMatchServiceImpl implements SdutentMatchService {
	@Autowired
	private SdutentMatchDao sdutentMatchDao;
	
	@Override
	public void saveperson(Integer matchid, String sdutentid, Integer tame) {
		SdutentMatch person = new SdutentMatch();
		person.setContest(matchid);
		person.setSdutentId(sdutentid);
		person.setTame(tame);
		sdutentMatchDao.saveperson(person);
	}

	@Override
	public void savetame(Integer matchid, String[] sdutentid, Integer tame) {
		for(int i=0;i<sdutentid.length;i++) {
			SdutentMatch person = new SdutentMatch();
			person.setContest(matchid);
			person.setSdutentId(sdutentid[i]);
			person.setTame(tame);
			sdutentMatchDao.saveperson(person);
		}
	}

	@Override
	public Integer findmaxtame(String matchid) {
		Integer max = sdutentMatchDao.findmaxtame(matchid);
		return max;
	}

	@Override
	public SdutentMatch findsdutentMatchbymatchid(String sdutentid, Integer matchid) {
		SdutentMatch sdutent = sdutentMatchDao.findsdutentmatchbymatchid(sdutentid, matchid);
		return sdutent;
	}

}
