package com.sdut.jgzj.bean;

public class SdutentMatch {
	//主键id
	private Integer id;
	//比赛名称对应的id
	private Integer contest;
	//选手学号
	private String sdutentId;
	//选手对应的队伍
	private Integer tame;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getContest() {
		return contest;
	}
	public void setContest(Integer contest) {
		this.contest = contest;
	}
	public String getSdutentId() {
		return sdutentId;
	}
	public void setSdutentId(String sdutentId) {
		this.sdutentId = sdutentId;
	}
	public Integer getTame() {
		return tame;
	}
	public void setTame(Integer tame) {
		this.tame = tame;
	}
	
	@Override
	public String toString() {
		return "SdutentMatch [id=" + id + ", contest=" + contest + ", sdutentId=" + sdutentId + ", tame=" + tame + "]";
	}
	
	public SdutentMatch(Integer contest, String sdutentId, Integer tame) {
		super();
		this.contest = contest;
		this.sdutentId = sdutentId;
		this.tame = tame;
	}
	public SdutentMatch() {
		super();
	}
	
}
