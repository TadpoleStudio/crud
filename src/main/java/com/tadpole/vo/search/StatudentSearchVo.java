package com.tadpole.vo.search;

import java.io.Serializable;
import java.util.Date;

public class StatudentSearchVo implements Serializable {

	private static final long serialVersionUID = 1L;

	protected String name;
	protected String number;
	protected String classNumber;
	protected Integer age;
	protected String teacherName;
	protected Date birthday;

	public String getName() {

		return name;
	}
	
	public String getNumber() {

		return number;
	}
	
	public String getClassNumber() {

		return classNumber;
	}
	
	public Integer getAge() {

		return age;
	}
	
	public String getTeacherName() {

		return teacherName;
	}
	
	public Date getBirthday() {

		return birthday;
	}
	
	public void setName(String name) {

		this.name = name;
	}
	
	public void setNumber(String number) {

		this.number = number;
	}
	
	public void setClassNumber(String classNumber) {

		this.classNumber = classNumber;
	}
	
	public void setAge(Integer age) {

		this.age = age;
	}
	
	public void setTeacherName(String teacherName) {

		this.teacherName = teacherName;
	}
	
	public void setBirthday(Date birthday) {

		this.birthday = birthday;
	}
	
}
