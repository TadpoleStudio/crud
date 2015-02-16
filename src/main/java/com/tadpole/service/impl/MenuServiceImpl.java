package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.tadpole.entity.Menu;
import com.tadpole.repository.MenuRepository;
import com.tadpole.service.MenuService;

@Service("MenuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	MenuRepository menuRepository;

	public Menu saveOrUpdateMenu(Menu menu) {

		return menuRepository.saveAndFlush(menu);
	}

	public Page<Menu> loadMenus() {

		return menuRepository.findAll(new PageRequest(0, 10));
	}

}
