package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.entity.Role;
import com.tadpole.entity.User;
import com.tadpole.repository.CityRepository;
import com.tadpole.repository.UserRepository;
import com.tadpole.service.CommonService;
import com.tadpole.util.SystemUtils;

@Service("commonService")
public class CommonServiceImpl implements CommonService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CityRepository cityRepository;

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
}
