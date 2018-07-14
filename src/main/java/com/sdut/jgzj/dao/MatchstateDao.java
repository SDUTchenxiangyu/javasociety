package com.sdut.jgzj.dao;

import java.util.List;

import com.sdut.jgzj.bean.Matchstate;

public interface MatchstateDao {
	public void saveMatch(Matchstate match);
	public List<Matchstate> findMatchstateAll();
}
