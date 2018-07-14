package com.sdut.jgzj.service;

import com.sdut.jgzj.bean.SdutentMatch;

public interface SdutentMatchService {
	public void saveperson(Integer matchid,String sdutentid,Integer tame);
	public void savetame(Integer matchid,String[] sdutentid,Integer tame);
	public Integer findmaxtame(String matchid);
	public SdutentMatch findsdutentMatchbymatchid(String sdutentid,Integer matchid);
}
