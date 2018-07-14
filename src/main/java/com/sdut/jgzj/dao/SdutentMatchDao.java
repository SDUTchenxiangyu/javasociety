package com.sdut.jgzj.dao;

import java.util.List;

import com.sdut.jgzj.bean.SdutentMatch;

public interface SdutentMatchDao {
	public void saveperson(SdutentMatch sdutentmatch);
	public void savetame(List<SdutentMatch> list);
	public Integer findmaxtame(String matchid);
	public SdutentMatch findsdutentmatchbymatchid(String sdutentid,Integer matchid);
}
