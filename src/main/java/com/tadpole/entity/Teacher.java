package com.tadpole.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.Column;
import org.apache.struts2.json.annotations.JSON;

/**
 * @author Jerry Jiang
 */
@Entity
@Table(name = " tad_teacher")
public class Teacher implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String name;
	
	protected Integer age;
	
	protected Integer a1;
	
	protected Integer a2;
	
	protected Integer a3;
	
	protected Integer a4;
	
	protected Integer salary;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getName() {

		return name;
	}
	
	public Integer getAge() {

		return age;
	}
	
	public Integer getA1() {

		return a1;
	}
	
	public Integer getA2() {

		return a2;
	}
	
	public Integer getA3() {

		return a3;
	}
	
	public Integer getA4() {

		return a4;
	}
	
	public Integer getSalary() {

		return salary;
	}
	
	public void setName(String name) {

		this.name = name;
	}
	
	public void setAge(Integer age) {

		this.age = age;
	}
	
	public void setA1(Integer a1) {

		this.a1 = a1;
	}
	
	public void setA2(Integer a2) {

		this.a2 = a2;
	}
	
	public void setA3(Integer a3) {

		this.a3 = a3;
	}
	
	public void setA4(Integer a4) {

		this.a4 = a4;
	}
	
	public void setSalary(Integer salary) {

		this.salary = salary;
	}
	
}
