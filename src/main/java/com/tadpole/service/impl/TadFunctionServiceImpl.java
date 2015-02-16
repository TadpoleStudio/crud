package com.tadpole.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tadpole.creator.ControllerCreator;
import com.tadpole.creator.EntityBeanCreator;
import com.tadpole.creator.JsObjectCreator;
import com.tadpole.creator.JspCreator;
import com.tadpole.creator.RepositoryCreator;
import com.tadpole.creator.ServiceImplemetationCreator;
import com.tadpole.creator.ServiceInterfaceCreator;
import com.tadpole.creator.StrutsConfigurationCreator;
import com.tadpole.entity.Menu;
import com.tadpole.entity.TadAttribute;
import com.tadpole.entity.TadFunction;
import com.tadpole.repository.MenuRepository;
import com.tadpole.repository.TadAttributeRepository;
import com.tadpole.repository.TadFunctionRepository;
import com.tadpole.service.TadFunctionService;
import com.tadpole.vo.JpaAttributeDefinition;
import com.tadpole.vo.JpaEntityDefinition;
import com.tadpole.vo.JspVo;

@Service("TadFunctionService")
public class TadFunctionServiceImpl implements TadFunctionService {

	@Autowired
	TadFunctionRepository tadFunctionRepository;

	@Autowired
	TadAttributeRepository tadAttributeRepository;

	@Autowired
	MenuRepository menuRepository;

	public TadFunction saveOrUpdateTadFunction(TadFunction tadFunction) {

		boolean isCreation = tadFunction.getId() == null;

		if (isCreation) {

			TadFunction functionWithSameTableName = tadFunctionRepository.findByTableName(tadFunction.getTableName());
			if (functionWithSameTableName != null) {
				throw new RuntimeException("The table exists.");
			}

			TadFunction functionWithSameEntityName = tadFunctionRepository.findByEntityName(tadFunction.getEntityName());
			if (functionWithSameEntityName != null) {
				throw new RuntimeException("The entity exists.");
			}

			TadFunction functionWithSameMenuTitle = tadFunctionRepository.findByMenuTitle(tadFunction.getMenuTitle());
			if (functionWithSameMenuTitle != null) {
				throw new RuntimeException("The menu title exists.");
			}
		}

		return tadFunctionRepository.saveAndFlush(tadFunction);
	}

	public TadFunction generateCode(String functionId) {

		if (StringUtils.isBlank(functionId)) {
			throw new RuntimeException("Function id is not provided.");
		}

		Integer id = Integer.valueOf(functionId);
		TadFunction function = tadFunctionRepository.findOne(id);

		JpaEntityDefinition jpaEntityDefinition = new JpaEntityDefinition();
		jpaEntityDefinition.setTableName(function.getTableName());
		jpaEntityDefinition.setJavaClassName(function.getEntityName());

		List<TadAttribute> tadAttributes = tadAttributeRepository.findByFunctionId(functionId);
		List<JpaAttributeDefinition> jpaAttributeDefinitions = new ArrayList<JpaAttributeDefinition>();

		for (TadAttribute tadAttribute : tadAttributes) {
			JpaAttributeDefinition jpaAttributeDefinition = new JpaAttributeDefinition(tadAttribute.getName(), tadAttribute.getType());
			jpaAttributeDefinitions.add(jpaAttributeDefinition);
		}
		jpaEntityDefinition.setAttributeDefinitions(jpaAttributeDefinitions);

		String jpaEntityCode = EntityBeanCreator.generateSourceFile(jpaEntityDefinition);
		function.setJpaEntityCode(jpaEntityCode);

		String jsVoCode = JsObjectCreator.generateSourceFile(jpaEntityDefinition);
		function.setJsVoCode(jsVoCode);

		String repositoryCode = RepositoryCreator.generateSourceFile(jpaEntityDefinition);
		function.setRepositoryCode(repositoryCode);

		String serviceInterfaceCode = ServiceInterfaceCreator.generateSourceFile(jpaEntityDefinition);
		function.setServiceInterfaceCode(serviceInterfaceCode);

		String serviceImplementationCode = ServiceImplemetationCreator.generateSourceFile(jpaEntityDefinition);
		function.setServiceImplementationCode(serviceImplementationCode);

		String actionCode = ControllerCreator.generateSourceFile(jpaEntityDefinition);
		function.setActionCode(actionCode);

		String strutsConfiguration = StrutsConfigurationCreator.generateSourceFile(function);
		function.setStrutsConfigurationgCode(strutsConfiguration);

		JspVo jspVo = generateJspVo(jpaEntityDefinition, function, tadAttributes);
		
		String jspCode = JspCreator.generateSourceFile(jspVo);
		function.setJspCode(jspCode);

		TadFunction result = tadFunctionRepository.saveAndFlush(function);

		if (result != null) {

			createOrUpdateMenuForFunction(function);
		}

		return result;
	}

	private JspVo generateJspVo(JpaEntityDefinition jpaEntityDefinition, TadFunction function, List<TadAttribute> tadAttributes) {

		JspVo jspVo = new JspVo();
		jspVo.setFirstLetterLowerCaseJavaClassName(jpaEntityDefinition.getFirstLetterLowerCaseJavaClassName());
		jspVo.setAttributeDefinitions(jpaEntityDefinition.getAttributeDefinitions());
		jspVo.setJavaClassName(jpaEntityDefinition.getJavaClassName());
		jspVo.setStrutsNamespace(function.getStrutsNamespace());
		jspVo.setTitle(function.getTitle());
		jspVo.setTadAttributes(tadAttributes);
		
//		List<List<JpaAttributeDefinition>> attrGroups = new ArrayList<List<JpaAttributeDefinition>>();
//		List<JpaAttributeDefinition> singleGroup = null;
//		
//		List<JpaAttributeDefinition> attributeDefinitions = jpaEntityDefinition.getAttributeDefinitions();
//		for (int i = 0; i < attributeDefinitions.size(); i++) {
//			
//			int groupIndex = i % 2;
//			
//			if (groupIndex == 0) {
//				singleGroup = new ArrayList<JpaAttributeDefinition>();
//				attrGroups.add(singleGroup);
//			}
//			
//			singleGroup.add(attributeDefinitions.get(i));
//		}
//		
//		jspVo.setAttrGroupList(attrGroups);
		
		return jspVo;
	}

	private void createOrUpdateMenuForFunction(TadFunction function) {

		String elementId = function.getEntityName() + "Link";
		String link = "/crud/" + function.getStrutsNamespace() + "/load" + function.getEntityName() + "Mgr.action";
		Menu existedMenu = menuRepository.findByElementId(elementId);
		if (existedMenu == null) {
			existedMenu = new Menu(function.getMenuTitle(), link, elementId);
		}

		menuRepository.saveAndFlush(existedMenu);
	}

	public List<String> loadAllTableNames() {

		return tadFunctionRepository.loadAllTableNames();
	}

	public TadFunction loadSingleFunction(String tableNameSearch) {

		return tadFunctionRepository.findByTableName(tableNameSearch);
	}

	public List<TadAttribute> loadFunctionAttrites(String functionId) {

		return tadAttributeRepository.findByFunctionId(functionId);
	}

}
