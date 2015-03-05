package com.tadpole.vo.search;

import java.io.Serializable;

public class TeacherSearchVo implements Serializable {

	private static final long serialVersionUID = 1L;

	protected String name;
	protected Integer age;
	protected String salary;
	protected Boolean retired;

	public String getName() {

		return name;
	}
	
	public Integer getAge() {

		return age;
	}
	
	public String getSalary() {

		return salary;
	}
	
	public Boolean getRetired() {

		return retired;
	}
	
	public void setName(String name) {

		this.name = name;
	}
	
	public void setAge(Integer age) {

		this.age = age;
	}
	
	public void setSalary(String salary) {

		this.salary = salary;
	}
	
	public void setRetired(Boolean retired) {

		this.retired = retired;
	}
	
}
