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
@Table(name = "tad_teacher")
public class Teacher implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String name;
	
	protected Integer age;
	
	protected String salary;
	
	protected Date a1;
	
	protected String a2;
	
	protected String a3;
	
	protected String a4;
	
	protected Boolean retired;
	
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
	
	public Integer getAge() {

		return age;
	}
	
	public String getSalary() {

		return salary;
	}
	
	@JSON(format="yyyy-MM-dd")
	public Date getA1() {

		return a1;
	}
	
	public String getA2() {

		return a2;
	}
	
	public String getA3() {

		return a3;
	}
	
	public String getA4() {

		return a4;
	}
	
	public Boolean getRetired() {

		return retired;
	}
	
	@JSON(format="yyyy-MM-dd")
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
	
	public void setA1(Date a1) {

		this.a1 = a1;
	}
	
	public void setA2(String a2) {

		this.a2 = a2;
	}
	
	public void setA3(String a3) {

		this.a3 = a3;
	}
	
	public void setA4(String a4) {

		this.a4 = a4;
	}
	
	public void setRetired(Boolean retired) {

		this.retired = retired;
	}
	
	public void setBirthday(Date birthday) {

		this.birthday = birthday;
	}
	
}
