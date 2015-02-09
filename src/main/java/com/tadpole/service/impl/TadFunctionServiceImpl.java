package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.entity.TadFunction;
import com.tadpole.repository.TadFunctionRepository;
import com.tadpole.service.TadFunctionService;

@Service("TadFunctionService")
public class TadFunctionServiceImpl implements TadFunctionService {

	@Autowired
	TadFunctionRepository tadFunctionRepository;

	public void saveOrUpdateTadFunction(TadFunction tadFunction) {

		tadFunctionRepository.save(tadFunction);
	}

}
