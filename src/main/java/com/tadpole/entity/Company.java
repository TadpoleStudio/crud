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
@Table(name = "tad_company")
public class Company implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String name;
	
	protected String location;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getName() {

		return name;
	}
	
	public String getLocation() {

		return location;
	}
	
	public void setName(String name) {

		this.name = name;
	}
	
	public void setLocation(String location) {

		this.location = location;
	}
	
}
