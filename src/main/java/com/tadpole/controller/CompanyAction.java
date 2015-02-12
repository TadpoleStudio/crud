package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.Company;
import com.tadpole.service.CompanyService;
import com.tadpole.vo.ResponseVo;

public class CompanyAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "CompanyService")
	private CompanyService companyService;

	public String saveOrUpdateCompany() {

		String companyJson = getParameter("companyJson");

		if (StringUtils.isEmpty(companyJson)) {
			setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

			return SUCCESS;
		}

		Company company = (Company)JSONObject.toBean(JSONObject.fromObject(companyJson), Company.class);

		companyService.saveOrUpdateCompany(company);

		return SUCCESS;
	}

}
