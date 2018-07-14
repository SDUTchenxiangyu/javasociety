package com.sdut.jgzj.bean;

import java.util.Date;


public class Matchstate {
	//主键id
	private Integer id;
	//比赛名称
	private String name;
	//比赛开始时间
	private Date openTime;
	//比赛结束时间
	private Date closeTime;
	//比赛地点
	private String place;
	//比赛届数
	private Integer matchClass;
	//比赛个人还是团队
	private String timeorperson;
	//队伍人数
	private Integer time_number;
	//比赛状态
	private boolean openorclose;
	//比赛等级
	private Integer typematch;
	
	public Integer getTypematch() {
		return typematch;
	}
	public void setTypematch(Integer typematch) {
		this.typematch = typematch;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getOpenTime() {
		return openTime;
	}
	public void setOpenTime(Date openTime) {
		this.openTime = openTime;
	}
	public Date getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public Integer getMatchClass() {
		return matchClass;
	}
	public void setMatchClass(Integer matchClass) {
		this.matchClass = matchClass;
	}
	public String getTimeorperson() {
		return timeorperson;
	}
	public void setTimeorperson(String timeorperson) {
		this.timeorperson = timeorperson;
	}
	public Integer getTime_number() {
		return time_number;
	}
	public void setTime_number(Integer time_number) {
		this.time_number = time_number;
	}
	public boolean isOpenorclose() {
		return openorclose;
	}
	public void setOpenorclose(boolean openorclose) {
		this.openorclose = openorclose;
	}
	
	
	@Override
	public String toString() {
		return "Matchstate [id=" + id + ", name=" + name + ", openTime=" + openTime + ", closeTime=" + closeTime
				+ ", place=" + place + ", matchClass=" + matchClass + ", timeorperson=" + timeorperson
				+ ", time_number=" + time_number + ", openorclose=" + openorclose + ", typematch=" + typematch + "]";
	}
	
	public Matchstate(String name, Date openTime, Date closeTime, String place, Integer matchClass, String timeorperson,
			Integer time_number, boolean openorclose, Integer typematch) {
		super();
		this.name = name;
		this.openTime = openTime;
		this.closeTime = closeTime;
		this.place = place;
		this.matchClass = matchClass;
		this.timeorperson = timeorperson;
		this.time_number = time_number;
		this.openorclose = openorclose;
		this.typematch = typematch;
	}
	public Matchstate() {
		super();
	}
	
}
