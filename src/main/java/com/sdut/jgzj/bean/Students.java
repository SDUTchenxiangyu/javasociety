package com.sdut.jgzj.bean;

public class Students {
	//主键id
	private Integer id;
	//用户姓名
	private String name;
	//用户学号
	private String studentId;
	//用户手机号
	private String phone;
	//用户密码
	private String password;
	//用户班级
	private String studentClass;
	//用户权限
	private String power;
	
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
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
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStudentClass() {
		return studentClass;
	}
	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}
	
	
	@Override
	public String toString() {
		return "Students [id=" + id + ", name=" + name + ", studentId=" + studentId + ", phone=" + phone + ", password="
				+ password + ", studentClass=" + studentClass + ", power=" + power + "]";
	}
	
	public Students(String name, String studentId, String phone, String password, String studentClass, String power) {
		super();
		this.name = name;
		this.studentId = studentId;
		this.phone = phone;
		this.password = password;
		this.studentClass = studentClass;
		this.power = power;
	}
	public Students() {
		super();
	}
	
}
