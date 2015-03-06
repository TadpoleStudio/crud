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
@Table(name = "tad_statudent")
public class Statudent implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String name;
	
	protected String number;
	
	protected String classNumber;
	
	protected Integer age;
	
	protected String teacherName;
	
	protected Date birthday;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

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
	
	@JSON(format="yyyy-MM-dd")
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
