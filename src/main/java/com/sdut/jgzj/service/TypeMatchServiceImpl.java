package com.sdut.jgzj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdut.jgzj.bean.TypeMatch;
import com.sdut.jgzj.dao.TypeMatchDao;
@Service
public class TypeMatchServiceImpl implements TypeMatchService {
	@Autowired
	private TypeMatchDao typeMatchDao;
	@Override
	public TypeMatch findtypebyId(Integer id) {
		TypeMatch typematch = typeMatchDao.findtypebyId(id);
		return typematch;
	}

}
