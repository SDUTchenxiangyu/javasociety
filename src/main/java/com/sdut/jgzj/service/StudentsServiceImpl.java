package com.sdut.jgzj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdut.jgzj.bean.Students;
import com.sdut.jgzj.dao.StudentsDao;
@Service
public class StudentsServiceImpl implements StudentsService {
	@Autowired
	private StudentsDao studentDao;
	@Override
	public Students findbyStudentId(String studentID) {
		Students student = studentDao.findbyStudentId(studentID);
		return student;
	}
	@Override
	public void saveStudent(String name, String studentId, String phone, String password, String studentClass) {
		Students student = new Students();
		student.setName(name);
		student.setPassword(password);
		student.setPhone(phone);
		student.setStudentClass(studentClass);
		student.setStudentId(studentId);
		studentDao.saveStudent(student);
		
	}

}
