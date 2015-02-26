package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.Test;
import com.tadpole.service.TestService;
import com.tadpole.vo.ResponseVo;
import com.tadpole.vo.PagedElement;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;

@Component("TestAction")
@Scope("prototype")
public class TestAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "TestService")
	private TestService testService;

	public String saveOrUpdateTest() {
	
		try {
			String testJson = getParameter("testJson");

			if (StringUtils.isEmpty(testJson)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

				return SUCCESS;
			}

			Test test = (Test)JSONObject.toBean(JSONObject.fromObject(testJson), Test.class);

			Test saved = testService.saveOrUpdateTest(test);
			
			ResponseVo response = ResponseVo.newSuccessMessage("The test is successfully saved.");
			response.setObject(saved);
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}

	public String loadTests() {

		try {
			Page<Test> tests = testService.loadTests();

			PagedElement<Test> pageElement = new PagedElement<Test>(tests);

			ResponseVo response = ResponseVo.newSuccessMessage("loaded successfully.");
			response.setObject(pageElement);

			setResponse(response);

		} catch (Exception e) {
			setResponse(ResponseVo.newFailMessage(e.getMessage()));

		}

		return SUCCESS;
	}
}
