package com.sdut.jgzj.service;

import com.sdut.jgzj.bean.Students;

public interface StudentsService {
	public Students findbyStudentId(String StudentID);
	public void saveStudent(String name,String studentId,String phone,String password,String studentClass);
}
