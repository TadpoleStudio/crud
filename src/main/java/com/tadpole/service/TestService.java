package com.tadpole.service;

import org.springframework.data.domain.Page;

import com.tadpole.entity.Test;


public interface TestService {

	Test saveOrUpdateTest(Test test);

	Page<Test> loadTests();
}
