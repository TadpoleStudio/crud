package com.tadpole.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.tadpole.entity.${javaClassName};

public interface ${javaClassName}Repository extends JpaRepository<${javaClassName}, Integer>, JpaSpecificationExecutor<${javaClassName}> {

	// public ${javaClassName} findByName(String name);
}