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
	
	public void delete${javaClassName}(String ${firstLetterLowerCaseJavaClassName}Id) {

		${firstLetterLowerCaseJavaClassName}Repository.delete(Integer.valueOf(${firstLetterLowerCaseJavaClassName}Id));
	}
	
	public Page<${javaClassName}> load${javaClassName}s(String currentIndex) {

		return ${firstLetterLowerCaseJavaClassName}Repository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));
	}

}
