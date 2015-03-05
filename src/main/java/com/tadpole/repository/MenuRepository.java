package com.tadpole.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.tadpole.entity.Menu;

public interface MenuRepository extends JpaRepository<Menu, Integer>, JpaSpecificationExecutor<Menu> {

	Menu findByElementId(String elementId);
	
	List<Menu> findByVisible(Boolean visible);

}
