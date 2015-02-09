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
@Table(name = "tad_dev_function")
public class TadFunction implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	protected Integer id;
	
	protected String tableName;
	
	protected String entityName;
	
	protected String strutsNamespace;
	
	protected String description;
	
	protected String title;
	
	protected String menuTitle;
	
	@Column(length=1000)
	protected String jpaEntityCode;
	
	protected String jsVoCode;
	
	@Column(length=2000)
	protected String actionCode;
	
	@Column(length=500)
	protected String repositoryCode;
	
	@Column(length=500)
	protected String serviceInterfaceCode;
	
	@Column(length=4000)
	protected String serviceImplementationCode;
	

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {

		this.id = id;
	}

	public String getTableName() {

		return tableName;
	}
	
	public String getEntityName() {

		return entityName;
	}
	
	public String getStrutsNamespace() {

		return strutsNamespace;
	}
	
	public String getDescription() {

		return description;
	}
	
	public String getTitle() {

		return title;
	}
	
	public String getMenuTitle() {

		return menuTitle;
	}
	
	public String getJpaEntityCode() {

		return jpaEntityCode;
	}
	
	public String getJsVoCode() {

		return jsVoCode;
	}
	
	public String getActionCode() {

		return actionCode;
	}
	
	public String getRepositoryCode() {

		return repositoryCode;
	}
	
	public String getServiceInterfaceCode() {

		return serviceInterfaceCode;
	}
	
	public String getServiceImplementationCode() {

		return serviceImplementationCode;
	}
	
	public void setTableName(String tableName) {

		this.tableName = tableName;
	}
	
	public void setEntityName(String entityName) {

		this.entityName = entityName;
	}
	
	public void setStrutsNamespace(String strutsNamespace) {

		this.strutsNamespace = strutsNamespace;
	}
	
	public void setDescription(String description) {

		this.description = description;
	}
	
	public void setTitle(String title) {

		this.title = title;
	}
	
	public void setMenuTitle(String menuTitle) {

		this.menuTitle = menuTitle;
	}
	
	public void setJpaEntityCode(String jpaEntityCode) {

		this.jpaEntityCode = jpaEntityCode;
	}
	
	public void setJsVoCode(String jsVoCode) {

		this.jsVoCode = jsVoCode;
	}
	
	public void setActionCode(String actionCode) {

		this.actionCode = actionCode;
	}
	
	public void setRepositoryCode(String repositoryCode) {

		this.repositoryCode = repositoryCode;
	}
	
	public void setServiceInterfaceCode(String serviceInterfaceCode) {

		this.serviceInterfaceCode = serviceInterfaceCode;
	}
	
	public void setServiceImplementationCode(String serviceImplementationCode) {

		this.serviceImplementationCode = serviceImplementationCode;
	}
	
}
