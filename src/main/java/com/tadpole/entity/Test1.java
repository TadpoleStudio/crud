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
@Table(name = "tad_test1")
public class Test1 implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String a1;
	
	protected String a2;
	
	protected String a3;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getA1() {

		return a1;
	}
	
	public String getA2() {

		return a2;
	}
	
	public String getA3() {

		return a3;
	}
	
	public void setA1(String a1) {

		this.a1 = a1;
	}
	
	public void setA2(String a2) {

		this.a2 = a2;
	}
	
	public void setA3(String a3) {

		this.a3 = a3;
	}
	
}
