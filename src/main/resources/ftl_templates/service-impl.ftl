package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.tadpole.entity.${javaClassName};
import com.tadpole.repository.${javaClassName}Repository;
import com.tadpole.service.${javaClassName}Service;

@Service("${javaClassName}Service")
public class ${javaClassName}ServiceImpl implements ${javaClassName}Service {

	@Autowired
	${javaClassName}Repository ${firstLetterLowerCaseJavaClassName}Repository;

	public ${javaClassName} saveOrUpdate${javaClassName}(${javaClassName} ${firstLetterLowerCaseJavaClassName}) {

		return ${firstLetterLowerCaseJavaClassName}Repository.saveAndFlush(${firstLetterLowerCaseJavaClassName});
	}
	
	public Page<${javaClassName}> load${javaClassName}s() {

		return ${firstLetterLowerCaseJavaClassName}Repository.findAll(new PageRequest(0, 10));
	}

}
