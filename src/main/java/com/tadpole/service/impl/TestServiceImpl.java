package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.tadpole.entity.Test;
import com.tadpole.repository.TestRepository;
import com.tadpole.service.TestService;

@Service("TestService")
public class TestServiceImpl implements TestService {

	@Autowired
	TestRepository testRepository;

	public Test saveOrUpdateTest(Test test) {

		return testRepository.saveAndFlush(test);
	}
	
	public Page<Test> loadTests() {

		return testRepository.findAll(new PageRequest(0, 10));
	}

}
