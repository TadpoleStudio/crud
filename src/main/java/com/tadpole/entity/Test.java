package com.tadpole.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.Column;

/**
 * @author Jerry Jiang
 */
@Entity
@Table(name = "tad_test")
public class Test implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String test6;
	
	protected String test2;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getTest6() {

		return test6;
	}
	
	public String getTest2() {

		return test2;
	}
	
	public void setTest6(String test6) {

		this.test6 = test6;
	}
	
	public void setTest2(String test2) {

		this.test2 = test2;
	}
	
}
