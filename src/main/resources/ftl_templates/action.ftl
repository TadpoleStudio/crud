package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.${javaClassName};
import com.tadpole.service.${javaClassName}Service;
import com.tadpole.vo.ResponseVo;
import com.tadpole.vo.PagedElement;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;

@Component("${javaClassName}Action")
@Scope("prototype")
public class ${javaClassName}Action extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "${javaClassName}Service")
	private ${javaClassName}Service ${firstLetterLowerCaseJavaClassName}Service;

	public String saveOrUpdate${javaClassName}() {
	
		try {
			String ${firstLetterLowerCaseJavaClassName}Json = getParameter("${firstLetterLowerCaseJavaClassName}Json");

			if (StringUtils.isEmpty(${firstLetterLowerCaseJavaClassName}Json)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

				return SUCCESS;
			}

			${javaClassName} ${firstLetterLowerCaseJavaClassName} = (${javaClassName})JSONObject.toBean(JSONObject.fromObject(${firstLetterLowerCaseJavaClassName}Json), ${javaClassName}.class);

			${javaClassName} saved = ${firstLetterLowerCaseJavaClassName}Service.saveOrUpdate${javaClassName}(${firstLetterLowerCaseJavaClassName});
			
			ResponseVo response = ResponseVo.newSuccessMessage("The ${firstLetterLowerCaseJavaClassName} is successfully saved.");
			response.setObject(saved);
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}

	public String load${javaClassName}s() {

		try {
			String currentIndex = getParameter("currentIndex");
			if (StringUtils.isEmpty(currentIndex)) {
        		currentIndex = "1";
			}
			Page<${javaClassName}> ${firstLetterLowerCaseJavaClassName}s = ${firstLetterLowerCaseJavaClassName}Service.load${javaClassName}s(currentIndex);

			PagedElement<${javaClassName}> pageElement = new PagedElement<${javaClassName}>(${firstLetterLowerCaseJavaClassName}s);

			ResponseVo response = ResponseVo.newSuccessMessage("loaded successfully.");
			response.setObject(pageElement);

			setResponse(response);

		} catch (Exception e) {
			setResponse(ResponseVo.newFailMessage(e.getMessage()));

		}

		return SUCCESS;
	}
}
