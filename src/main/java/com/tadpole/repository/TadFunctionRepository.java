package com.tadpole.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.tadpole.entity.TadFunction;

public interface TadFunctionRepository extends JpaRepository<TadFunction, Integer>, JpaSpecificationExecutor<TadFunction> {

	// public TadFunction findByName(String name);
}
