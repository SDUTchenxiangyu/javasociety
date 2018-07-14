package com.sdut.jgzj.bean;

public class BasicMatch {
	//主键ID
	private Integer id;
	//比赛名称
	private String name;
	//比赛类型
	private String typematch;
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
	public String getTypematch() {
		return typematch;
	}
	public void setTypematch(String typematch) {
		this.typematch = typematch;
	}
	@Override
	public String toString() {
		return "BasicMatch [id=" + id + ", name=" + name + ", typematch=" + typematch + "]";
	}
	public BasicMatch(String name, String typematch) {
		super();
		this.name = name;
		this.typematch = typematch;
	}
	public BasicMatch() {
		super();
	}
	
}
