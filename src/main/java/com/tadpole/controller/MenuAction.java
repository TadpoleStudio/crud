package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;

import com.tadpole.entity.Menu;
import com.tadpole.service.MenuService;
import com.tadpole.vo.PagedElement;
import com.tadpole.vo.ResponseVo;

@Component("MenuAction")
@Scope("prototype")
public class MenuAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "MenuService")
	private MenuService menuService;

	public String saveOrUpdateMenu() {

		try {
			String menuJson = getParameter("menuJson");

			if (StringUtils.isEmpty(menuJson)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

				return SUCCESS;
			}

			Menu menu = (Menu)JSONObject.toBean(JSONObject.fromObject(menuJson), Menu.class);

			Menu saved = menuService.saveOrUpdateMenu(menu);
			
			ResponseVo response = ResponseVo.newSuccessMessage("The menu is successfully saved.");
			response.setObject(saved);
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}

	public String loadMenus() {

		try {
			Page<Menu> menus = menuService.loadMenus();

			PagedElement<Menu> pageElement = new PagedElement<Menu>(menus);

			ResponseVo response = ResponseVo.newSuccessMessage("loaded successfully.");
			response.setObject(pageElement);

			setResponse(response);

		} catch (Exception e) {
			setResponse(ResponseVo.newFailMessage(e.getMessage()));

		}

		return SUCCESS;
	}
}
