package com.tadpole.vo;

import java.util.List;

import com.tadpole.entity.TadAttribute;

public class JspVo {

	private String javaClassName;
	private String firstLetterLowerCaseJavaClassName;
	private String strutsNamespace;
	private String title;
	private List<JpaAttributeDefinition> attributeDefinitions;
	private List<List<JpaAttributeDefinition>> attrGroupList;
	private List<TadAttribute> tadAttributes;
	
	public String getJavaClassName() {
	
		return javaClassName;
	}
	
	public void setJavaClassName(String javaClassName) {
	
		this.javaClassName = javaClassName;
	}
	
	public String getFirstLetterLowerCaseJavaClassName() {
	
		return firstLetterLowerCaseJavaClassName;
	}
	
	public void setFirstLetterLowerCaseJavaClassName(String firstLetterLowerCaseJavaClassName) {
	
		this.firstLetterLowerCaseJavaClassName = firstLetterLowerCaseJavaClassName;
	}
	
	public String getStrutsNamespace() {
	
		return strutsNamespace;
	}
	
	public void setStrutsNamespace(String strutsNamespace) {
	
		this.strutsNamespace = strutsNamespace;
	}
	
	public String getTitle() {
	
		return title;
	}
	
	public void setTitle(String title) {
	
		this.title = title;
	}
	
	public List<JpaAttributeDefinition> getAttributeDefinitions() {
	
		return attributeDefinitions;
	}
	
	public void setAttributeDefinitions(List<JpaAttributeDefinition> attributeDefinitions) {
	
		this.attributeDefinitions = attributeDefinitions;
	}
	
	public List<List<JpaAttributeDefinition>> getAttrGroupList() {
	
		return attrGroupList;
	}
	
	public void setAttrGroupList(List<List<JpaAttributeDefinition>> attrGroupList) {
	
		this.attrGroupList = attrGroupList;
	}

	
	public List<TadAttribute> getTadAttributes() {
	
		return tadAttributes;
	}

	
	public void setTadAttributes(List<TadAttribute> tadAttributes) {
	
		this.tadAttributes = tadAttributes;
	}
	
}