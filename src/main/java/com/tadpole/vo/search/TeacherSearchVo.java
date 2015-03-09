package com.tadpole.vo.search;

import java.io.Serializable;
import java.util.Date;

public class TeacherSearchVo implements Serializable {

	private static final long serialVersionUID = 1L;

	protected String name;
	protected Integer age;
	protected String salary;
	protected Boolean retired;
	protected Date birthday;

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
	
	public Date getBirthday() {

		return birthday;
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
	
	public void setBirthday(Date birthday) {

		this.birthday = birthday;
	}
	
}
