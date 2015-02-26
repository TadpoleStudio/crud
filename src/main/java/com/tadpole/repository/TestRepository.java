package com.tadpole.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.tadpole.entity.Test;

public interface TestRepository extends JpaRepository<Test, Integer>, JpaSpecificationExecutor<Test> {

}
