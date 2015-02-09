package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.entity.${javaClassName};
import com.tadpole.repository.${javaClassName}Repository;
import com.tadpole.service.${javaClassName}Service;

@Service("${javaClassName}Service")
public class ${javaClassName}ServiceImpl implements ${javaClassName}Service {

	@Autowired
	${javaClassName}Repository ${firstLetterLowerCaseJavaClassName}Repository;

	public void saveOrUpdate${javaClassName}(${javaClassName} ${firstLetterLowerCaseJavaClassName}) {

		${firstLetterLowerCaseJavaClassName}Repository.save(${firstLetterLowerCaseJavaClassName});
	}

}
