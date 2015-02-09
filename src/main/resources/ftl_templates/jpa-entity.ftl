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
@Table(name = "${tableName}")
public class ${javaClassName} implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
<#list attributeDefinitions as attr>
	<#if attr.length??>
	@Column(length=${attr.length})
	</#if>
	protected ${attr.type} ${attr.name};
	
</#list>

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

<#list attributeDefinitions as attr>
	public ${attr.type} get${attr.firstLetterUpperName}() {

		return ${attr.name};
	}
	
</#list>
<#list attributeDefinitions as attr>
	public void set${attr.firstLetterUpperName}(${attr.type} ${attr.name}) {

		this.${attr.name} = ${attr.name};
	}
	
</#list>
}
