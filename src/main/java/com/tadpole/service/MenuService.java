package com.tadpole.service;

import org.springframework.data.domain.Page;

import com.tadpole.entity.Menu;


public interface MenuService {

	Menu saveOrUpdateMenu(Menu menu);

	Page<Menu> loadMenus();
}
