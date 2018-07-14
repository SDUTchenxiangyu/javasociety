package com.sdut.jgzj.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sdut.jgzj.bean.Students;
@Repository
public class StudentsDaoImpl implements StudentsDao {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession() {
		return sessionFactory.openSession();
	}
	@Override
	public Students findbyStudentId(String studentID) {
		String hql = "FROM Students WHERE STUDENTID = " + studentID;
		Query query = getSession().createQuery(hql);
		Students student = (Students) query.uniqueResult();
		return student;
	}
	@Override
	public void saveStudent(Students student) {
		getSession().save(student);
	}

}
