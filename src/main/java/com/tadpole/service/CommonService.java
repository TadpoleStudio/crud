package com.tadpole.service;

import com.tadpole.entity.User;


public interface CommonService {

	User getCurrentLoggedInUser();
	
	boolean checkUserNotHasRole(String username, String roleName);
}
