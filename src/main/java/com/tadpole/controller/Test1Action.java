package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.Test1;
import com.tadpole.service.Test1Service;
import com.tadpole.vo.ResponseVo;
import com.tadpole.vo.PagedElement;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;

@Component("Test1Action")
@Scope("prototype")
public class Test1Action extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "Test1Service")
	private Test1Service test1Service;

	public String saveOrUpdateTest1() {
	
		try {
			String test1Json = getParameter("test1Json");

			if (StringUtils.isEmpty(test1Json)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

				return SUCCESS;
			}

			Test1 test1 = (Test1)JSONObject.toBean(JSONObject.fromObject(test1Json), Test1.class);

			Test1 saved = test1Service.saveOrUpdateTest1(test1);
			
			ResponseVo response = ResponseVo.newSuccessMessage("The test1 is successfully saved.");
			response.setObject(saved);
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}

	public String loadTest1s() {

		try {
			Page<Test1> test1s = test1Service.loadTest1s();

			PagedElement<Test1> pageElement = new PagedElement<Test1>(test1s);

			ResponseVo response = ResponseVo.newSuccessMessage("loaded successfully.");
			response.setObject(pageElement);

			setResponse(response);

		} catch (Exception e) {
			setResponse(ResponseVo.newFailMessage(e.getMessage()));

		}

		return SUCCESS;
	}
}
