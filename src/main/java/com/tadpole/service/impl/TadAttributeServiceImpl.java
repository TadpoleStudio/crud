package com.tadpole.service.impl;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.stereotype.Service;

import com.tadpole.entity.TadAttribute;
import com.tadpole.entity.TadFunction;
import com.tadpole.repository.TadAttributeRepository;
import com.tadpole.repository.TadFunctionRepository;
import com.tadpole.service.TadAttributeService;

@Service("TadAttributeService")
public class TadAttributeServiceImpl implements TadAttributeService {

	@Autowired
	TadAttributeRepository tadAttributeRepository;

	@Autowired
	TadFunctionRepository tadFunctionRepository;

	@Resource(name = "dataSource")
	org.springframework.jdbc.datasource.DriverManagerDataSource dataSource;

	public TadAttribute saveOrUpdateTadAttribute(TadAttribute tadAttribute) {

		List<TadAttribute> attributes = tadAttributeRepository.findByFunctionId(tadAttribute.getFunctionId());
		for (TadAttribute singleAttribute : attributes) {

			boolean newAddedExits = tadAttribute.getId() == null && tadAttribute.getName().equals(singleAttribute.getName());
			boolean updateExits = tadAttribute.getId() != null && tadAttribute.getName().equals(singleAttribute.getName()) && tadAttribute.getId() != singleAttribute.getId();

			if (newAddedExits || updateExits) {
				throw new RuntimeException("The column exists.");
			}
		}

		Integer attributeId = tadAttribute.getId();
		if (attributeId != null) {

			TadAttribute existedAttribute = tadAttributeRepository.findOne(attributeId);
			boolean columnNameChanged = !existedAttribute.getName().equals(tadAttribute.getName());
			if (columnNameChanged) {
				alterColumnName(tadAttribute, existedAttribute);
			}
		}

		return tadAttributeRepository.saveAndFlush(tadAttribute);
	}

	private void alterColumnName(TadAttribute tadAttribute, TadAttribute existedAttribute) {

		String dataType = "";

		if (tadAttribute.getType().equals("String")) {
			dataType = "VARCHAR(255)";
		} else if (tadAttribute.getType().equals("Integer")) {
			dataType = "INT";
		}

		TadFunction tadFunction = tadFunctionRepository.findOne(Integer.valueOf(tadAttribute.getFunctionId()));
		String tableName = tadFunction.getTableName();
		String oldColumnName = existedAttribute.getName();
		String newColumnName = tadAttribute.getName();
		String alterSql = "ALTER TABLE " + tableName + " CHANGE COLUMN " + oldColumnName + " " + newColumnName + " " + dataType + " NULL DEFAULT NULL ;";

		System.out.println(alterSql);

		java.sql.Connection connection = DataSourceUtils.getConnection(dataSource);
		try {
			Statement statement = connection.createStatement();
			statement.execute(alterSql);

		} catch (SQLException e) {

			e.printStackTrace();
			throw new RuntimeException("change column type fails : " + e.getMessage());

		} finally {
			DataSourceUtils.releaseConnection(connection, dataSource);
		}
	}

	public void removeAttribute(String attributeId) {

		Integer attributeIdInteger = Integer.valueOf(attributeId);

		tadAttributeRepository.delete(attributeIdInteger);

		dropColumn(attributeIdInteger);

	}

	private void dropColumn(Integer attributeIdInteger) {

		TadAttribute tadAttribute = tadAttributeRepository.findOne(attributeIdInteger);
		TadFunction tadFunction = tadFunctionRepository.findOne(Integer.valueOf(tadAttribute.getFunctionId()));

		String tableName = tadFunction.getTableName();
		String columnName = tadAttribute.getName();

		String dropColumnSql = "ALTER TABLE " + tableName + " DROP COLUMN " + columnName;
		System.out.println(dropColumnSql);

		java.sql.Connection connection = DataSourceUtils.getConnection(dataSource);
		
		try {
			Statement statement = connection.createStatement();
			statement.execute(dropColumnSql);

		} catch (SQLException e) {

			e.printStackTrace();
			throw new RuntimeException("sql update fails : " + e.getMessage());

		} finally {
			DataSourceUtils.releaseConnection(connection, dataSource);
		}
	}

}
