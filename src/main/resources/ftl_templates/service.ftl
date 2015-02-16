package com.tadpole.service;

import org.springframework.data.domain.Page;

import com.tadpole.entity.${javaClassName};


public interface ${javaClassName}Service {

	${javaClassName} saveOrUpdate${javaClassName}(${javaClassName} ${firstLetterLowerCaseJavaClassName});

	Page<${javaClassName}> load${javaClassName}s();
}
