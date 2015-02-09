package com.tadpole.creator;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.google.common.collect.ImmutableList;
import com.google.common.io.Files;
import com.tadpole.constants.SystemPropertiesReader;
import com.tadpole.util.SystemUtils;
import com.tadpole.vo.JpaAttributeDefinition;
import com.tadpole.vo.JpaEntityDefinition;

import freemarker.template.Template;
import freemarker.template.TemplateException;

public class RepositoryCreator {

	public static void main(String[] args) {

		// repository-package
		JpaEntityDefinition jpaEntityDefinition = new JpaEntityDefinition();
		jpaEntityDefinition.setTableName("tad_test_user");

		JpaAttributeDefinition first = new JpaAttributeDefinition("userName", "String");
		JpaAttributeDefinition second = new JpaAttributeDefinition("age", "Integer");

		jpaEntityDefinition.setAttributeDefinitions(ImmutableList.of(first, second));
		jpaEntityDefinition.setJavaClassName("TadUser");

		generateEntitySourceFile(jpaEntityDefinition);

	}

	public static String generateRepositoryCode(JpaEntityDefinition jpaEntityDefinition) {

		try {
			Template template = SystemUtils.getFTLTemplateConfiguration().getTemplate("repository.ftl");

			String javaCode = FreeMarkerTemplateUtils.processTemplateIntoString(template, jpaEntityDefinition);

			System.out.println(javaCode);

			return javaCode;

		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}

		return null;
	}

	public static void generateEntitySourceFile(JpaEntityDefinition jpaEntityDefinition) {

		String jpaEntityPackagePath = SystemPropertiesReader.getString("repository-package");
		String filePath = jpaEntityPackagePath + jpaEntityDefinition.getJavaClassName() + "Repository.java";

		String sourceCode = generateRepositoryCode(jpaEntityDefinition);

		try {

			Files.write(sourceCode, new File(filePath), Charset.defaultCharset());

		} catch (IOException e) {
		}

	}
}
