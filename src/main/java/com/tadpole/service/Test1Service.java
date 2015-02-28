package com.tadpole.service;

import org.springframework.data.domain.Page;

import com.tadpole.entity.Test1;


public interface Test1Service {

	Test1 saveOrUpdateTest1(Test1 test1);

	Page<Test1> loadTest1s();
}
