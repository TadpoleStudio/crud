package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.tadpole.entity.Test1;
import com.tadpole.repository.Test1Repository;
import com.tadpole.service.Test1Service;

@Service("Test1Service")
public class Test1ServiceImpl implements Test1Service {

	@Autowired
	Test1Repository test1Repository;

	public Test1 saveOrUpdateTest1(Test1 test1) {

		return test1Repository.saveAndFlush(test1);
	}
	
	public Page<Test1> loadTest1s() {

		return test1Repository.findAll(new PageRequest(0, 10));
	}

}
