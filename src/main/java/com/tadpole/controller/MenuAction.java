package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.Menu;
import com.tadpole.service.MenuService;
import com.tadpole.vo.ResponseVo;

public class MenuAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "MenuService")
	private MenuService menuService;

	public String saveOrUpdateMenu() {

		String menuJson = getParameter("menuJson");

		if (StringUtils.isEmpty(menuJson)) {
			setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

			return SUCCESS;
		}

		Menu menu = (Menu)JSONObject.toBean(JSONObject.fromObject(menuJson), Menu.class);

		menuService.saveOrUpdateMenu(menu);

		return SUCCESS;
	}

}
