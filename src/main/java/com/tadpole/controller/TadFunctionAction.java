package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.TadFunction;
import com.tadpole.service.TadFunctionService;
import com.tadpole.vo.ResponseVo;

public class TadFunctionAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "TadFunctionService")
	private TadFunctionService tadFunctionService;

	public String saveOrUpdateTadFunction() {

		String tadFunctionJson = getParameter("tadFunctionJson");

		if (StringUtils.isEmpty(tadFunctionJson)) {
			setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

			return SUCCESS;
		}

		TadFunction tadFunction = (TadFunction)JSONObject.toBean(JSONObject.fromObject(tadFunctionJson), TadFunction.class);

		tadFunctionService.saveOrUpdateTadFunction(tadFunction);

		return SUCCESS;
	}

}
