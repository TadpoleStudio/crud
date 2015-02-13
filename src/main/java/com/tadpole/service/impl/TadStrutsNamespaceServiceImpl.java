package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.entity.TadStrutsNamespace;
import com.tadpole.repository.TadStrutsNamespaceRepository;
import com.tadpole.service.TadStrutsNamespaceService;

@Service("TadStrutsNamespaceService")
public class TadStrutsNamespaceServiceImpl implements TadStrutsNamespaceService {

	@Autowired
	TadStrutsNamespaceRepository tadStrutsNamespaceRepository;

	public TadStrutsNamespace saveOrUpdateTadStrutsNamespace(TadStrutsNamespace tadStrutsNamespace) {

		return tadStrutsNamespaceRepository.saveAndFlush(tadStrutsNamespace);
	}

}
