package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.ezmorph.object.DateMorpher;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;

import org.apache.commons.lang.StringUtils;

import com.tadpole.vo.search.StatudentSearchVo;
import com.tadpole.entity.Statudent;
import com.tadpole.service.StatudentService;
import com.tadpole.vo.ResponseVo;
import com.tadpole.vo.PagedElement;

import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;

@Component("StatudentAction")
@Scope("prototype")
public class StatudentAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "StatudentService")
	private StatudentService statudentService;

	public String saveOrUpdateStatudent() {
	
		try {
			String statudentJson = getParameter("statudentJson");

			if (StringUtils.isEmpty(statudentJson)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

				return SUCCESS;
			}

			Statudent statudent = (Statudent)JSONObject.toBean(JSONObject.fromObject(statudentJson), Statudent.class);

			Statudent saved = statudentService.saveOrUpdateStatudent(statudent);
			
			ResponseVo response = ResponseVo.newSuccessMessage("The statudent is successfully saved.");
			response.setObject(saved);
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}

	public String deleteStatudent() {
	
		try {
			String statudentId = getParameter("statudentId");

			if (StringUtils.isEmpty(statudentId)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data is provided to delete."));

				return SUCCESS;
			}

			statudentService.deleteStatudent(statudentId);
			
			ResponseVo response = ResponseVo.newSuccessMessage("The statudent is successfully deleted.");
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}
	public String loadStatudents() {

		try {
			String currentIndex = getParameter("currentIndex");
			if (StringUtils.isEmpty(currentIndex)) {
        		currentIndex = "1";
			}
			
			String statudentSearchVoJson = getParameter("statudentSearchVoJson");
			
			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{"yyyy-MM-dd"}));
			
			StatudentSearchVo statudentSearchVo = (StatudentSearchVo)JSONObject.toBean(JSONObject.fromObject(statudentSearchVoJson), StatudentSearchVo.class);
			
			Page<Statudent> statudents = statudentService.loadStatudents(currentIndex, statudentSearchVo);

			PagedElement<Statudent> pageElement = new PagedElement<Statudent>(statudents);

			ResponseVo response = ResponseVo.newSuccessMessage("loaded successfully.");
			response.setObject(pageElement);

			setResponse(response);

		} catch (Exception e) {
			setResponse(ResponseVo.newFailMessage(e.getMessage()));

		}

		return SUCCESS;
	}
}
