package com.sdut.jgzj.bean;

public class TypeMatch {
	//主键ID
	private Integer id;
	//比赛等级
	private String name;
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
	@Override
	public String toString() {
		return "TypeMatch [id=" + id + ", name=" + name + "]";
	}
	public TypeMatch(String name) {
		super();
		this.name = name;
	}
	public TypeMatch() {
		super();
	}
	
}
