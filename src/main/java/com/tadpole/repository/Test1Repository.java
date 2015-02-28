package com.tadpole.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.tadpole.entity.Test1;

public interface Test1Repository extends JpaRepository<Test1, Integer>, JpaSpecificationExecutor<Test1> {

}
