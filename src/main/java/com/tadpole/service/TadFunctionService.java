package com.tadpole.service;

import java.util.List;

import com.tadpole.entity.TadFunction;


public interface TadFunctionService {

	TadFunction saveOrUpdateTadFunction(TadFunction tadFunction);

	TadFunction generateCode(String functionId);

	List<String> loadAllTableNames();

}
