package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.entity.Company;
import com.tadpole.repository.CompanyRepository;
import com.tadpole.service.CompanyService;

@Service("CompanyService")
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	CompanyRepository companyRepository;

	public Company saveOrUpdateCompany(Company company) {

		return companyRepository.saveAndFlush(company);
	}

}
