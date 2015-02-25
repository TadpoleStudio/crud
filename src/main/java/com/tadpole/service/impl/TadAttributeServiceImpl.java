package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.entity.TadAttribute;
import com.tadpole.repository.TadAttributeRepository;
import com.tadpole.service.TadAttributeService;

@Service("TadAttributeService")
public class TadAttributeServiceImpl implements TadAttributeService {

	@Autowired
	TadAttributeRepository tadAttributeRepository;

	public TadAttribute saveOrUpdateTadAttribute(TadAttribute tadAttribute) {

		return tadAttributeRepository.saveAndFlush(tadAttribute);
	}

	public void removeAttribute(String attributeId) {

		Integer attributeIdInteger = Integer.valueOf(attributeId);
		
		tadAttributeRepository.delete(attributeIdInteger);
		
	}

}
