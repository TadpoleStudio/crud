package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.${javaClassName};
import com.tadpole.service.${javaClassName}Service;
import com.tadpole.vo.ResponseVo;

public class ${javaClassName}Action extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "${javaClassName}Service")
	private ${javaClassName}Service ${firstLetterLowerCaseJavaClassName}Service;

	public String saveOrUpdate${javaClassName}() {

		String ${firstLetterLowerCaseJavaClassName}Json = getParameter("${firstLetterLowerCaseJavaClassName}Json");

		if (StringUtils.isEmpty(${firstLetterLowerCaseJavaClassName}Json)) {
			setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

			return SUCCESS;
		}

		${javaClassName} ${firstLetterLowerCaseJavaClassName} = (${javaClassName})JSONObject.toBean(JSONObject.fromObject(${firstLetterLowerCaseJavaClassName}Json), ${javaClassName}.class);

		${firstLetterLowerCaseJavaClassName}Service.saveOrUpdate${javaClassName}(${firstLetterLowerCaseJavaClassName});

		return SUCCESS;
	}

}
