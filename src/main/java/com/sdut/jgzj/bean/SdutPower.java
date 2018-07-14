package com.sdut.jgzj.bean;

public class SdutPower {
	//主键id
	private Integer id;
	//用户角色（会员、干事、团长）
	private String name;
	//权限数字
	private Integer power;
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
	public Integer getPower() {
		return power;
	}
	public void setPower(Integer power) {
		this.power = power;
	}
	public SdutPower(String name, Integer power) {
		super();
		this.name = name;
		this.power = power;
	}
	public SdutPower() {
		super();
	}
	@Override
	public String toString() {
		return "SdutPower [id=" + id + ", name=" + name + ", power=" + power + "]";
	}
	
}
