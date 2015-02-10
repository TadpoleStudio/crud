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
@Table(name = "tad_dev_attribute")
public class TadAttribute implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String name;
	
	protected String type;
	
	protected String label;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getName() {

		return name;
	}
	
	public String getType() {

		return type;
	}
	
	public String getLabel() {

		return label;
	}
	
	public void setName(String name) {

		this.name = name;
	}
	
	public void setType(String type) {

		this.type = type;
	}
	
	public void setLabel(String label) {

		this.label = label;
	}
	
}
