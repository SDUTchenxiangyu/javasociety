package com.sdut.jgzj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sdut.jgzj.bean.Students;
public interface StudentsDao {
	public Students findbyStudentId(String studentID);

	public void saveStudent(Students student);
}
