package com.tadpole.vo;

import java.util.List;

public class JpaEntityDefinition {

	private String tableName;
	private String javaClassName;
	private String firstLetterLowerCaseJavaClassName;

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

	public String getFirstLetterLowerCaseJavaClassName() {

		String firstLetter = javaClassName.substring(0, 1);

		this.firstLetterLowerCaseJavaClassName = firstLetter.toLowerCase() + javaClassName.substring(1);

		return firstLetterLowerCaseJavaClassName;
	}

	public void setFirstLetterLowerCaseJavaClassName(String firstLetterLowerCaseJavaClassName) {

		this.firstLetterLowerCaseJavaClassName = firstLetterLowerCaseJavaClassName;
	}

}
