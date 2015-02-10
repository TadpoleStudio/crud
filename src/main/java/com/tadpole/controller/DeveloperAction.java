package com.tadpole.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.tadpole.repository.DropDownRepository;
import com.tadpole.repository.MenuRepository;
import com.tadpole.repository.ProvinceRepository;
import com.tadpole.service.CommonService;

@Component("DeveloperAction")
@Scope("prototype")
public class DeveloperAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "commonService")
	private CommonService commonService;

	@Autowired
	private ProvinceRepository provinceRepository;

	@Autowired
	private DropDownRepository dropDownRepository;

	@Autowired
	private MenuRepository menuRepository;


	public String saveOrUpdateFunction() {
		return SUCCESS;
	}

	

}