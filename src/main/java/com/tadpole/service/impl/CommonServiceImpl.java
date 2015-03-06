package com.tadpole.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.tadpole.entity.QuickDataSource;
import com.tadpole.entity.Role;
import com.tadpole.entity.User;
import com.tadpole.repository.CityRepository;
import com.tadpole.repository.QuickDataSourceRepository;
import com.tadpole.repository.UserRepository;
import com.tadpole.service.CommonService;
import com.tadpole.util.SystemUtils;
import com.tadpole.vo.Option;

@Service("commonService")
public class CommonServiceImpl implements CommonService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CityRepository cityRepository;

	@Autowired
	private QuickDataSourceRepository quickDataSourceRepository;

	public User getCurrentLoggedInUser() {

		String username = SystemUtils.getCurrentUserName();

		return userRepository.findByUsername(username);

	}

	public boolean checkUserNotHasRole(String username, String roleName) {

		User userToCheck = userRepository.findByUsername(username);

		for (Role role : userToCheck.getRoles()) {

			if (role.getName().equals(roleName)) {
				return false;
			}
		}

		return true;
	}

	public List<Option> findDatasourceByName(String dataSourceName) {

		List<Option> resultOptions = Lists.newArrayList();
		QuickDataSource quickDataSource = quickDataSourceRepository.findByName(dataSourceName);

		if (quickDataSource.getType().equals("Fixed Values")) {

			List<String> fixedValueList = Splitter.on(",").omitEmptyStrings().splitToList(quickDataSource.getKeyValues());
			for (String value : fixedValueList) {

				Option option = new Option();
				option.setOptionText(value);
				option.setOptionValue(value);

				resultOptions.add(option);
			}

		}
		return resultOptions;
	}
}
