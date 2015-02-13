package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.TadStrutsNamespace;
import com.tadpole.service.TadStrutsNamespaceService;
import com.tadpole.vo.ResponseVo;

public class TadStrutsNamespaceAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "TadStrutsNamespaceService")
	private TadStrutsNamespaceService tadStrutsNamespaceService;

	public String saveOrUpdateTadStrutsNamespace() {

		String tadStrutsNamespaceJson = getParameter("tadStrutsNamespaceJson");

		if (StringUtils.isEmpty(tadStrutsNamespaceJson)) {
			setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

			return SUCCESS;
		}

		TadStrutsNamespace tadStrutsNamespace = (TadStrutsNamespace)JSONObject.toBean(JSONObject.fromObject(tadStrutsNamespaceJson), TadStrutsNamespace.class);

		tadStrutsNamespaceService.saveOrUpdateTadStrutsNamespace(tadStrutsNamespace);

		return SUCCESS;
	}

}
