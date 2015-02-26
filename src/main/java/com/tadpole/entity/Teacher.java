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
@Table(name = "teacher")
public class Teacher implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String name;
	
	protected String age;
	
	protected String salary;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getName() {

		return name;
	}
	
	public String getAge() {

		return age;
	}
	
	public String getSalary() {

		return salary;
	}
	
	public void setName(String name) {

		this.name = name;
	}
	
	public void setAge(String age) {

		this.age = age;
	}
	
	public void setSalary(String salary) {

		this.salary = salary;
	}
	
}
