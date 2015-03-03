package com.tadpole.service;

import org.springframework.data.domain.Page;

import com.tadpole.entity.Statudent;
import com.tadpole.vo.search.StatudentSearchVo;

public interface StatudentService {

	Statudent saveOrUpdateStatudent(Statudent statudent);

	void deleteStatudent(String statudentId);
	
	Page<Statudent> loadStatudents(String currentIndex, StatudentSearchVo statudentSearchVo);
}
