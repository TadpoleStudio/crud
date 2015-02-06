package com.tadpole.vo;

import java.util.List;

public class JpaEntityDefinition {

	private String tableName;
	private String javaClassName;

	private List<JpaAttributeDefinition> attributeDefinitions;

	public String getTableName() {

		return tableName;
	}

	public void setTableName(String tableName) {

		this.tableName = tableName;
	}

	public List<JpaAttributeDefinition> getAttributeDefinitions() {

		return attributeDefinitions;
	}

	public void setAttributeDefinitions(List<JpaAttributeDefinition> attributeDefinitions) {

		this.attributeDefinitions = attributeDefinitions;
	}

	public String getJavaClassName() {

		return javaClassName;
	}

	public void setJavaClassName(String javaClassName) {

		this.javaClassName = javaClassName;
	}
}
