package com.tadpole.creator;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.google.common.io.Files;
import com.tadpole.constants.SystemPropertiesReader;
import com.tadpole.util.SystemUtils;
import com.tadpole.vo.JpaEntityDefinition;

import freemarker.template.Template;
import freemarker.template.TemplateException;

public class RepositoryCreator {

	public static String generateCode(JpaEntityDefinition jpaEntityDefinition) {

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

	public static String generateSourceFile(JpaEntityDefinition jpaEntityDefinition) {

		String filePath = getSourceFileName(jpaEntityDefinition);

		String sourceCode = generateCode(jpaEntityDefinition);

		try {

			Files.write(sourceCode, new File(filePath), Charset.defaultCharset());

		} catch (IOException e) {
			return null;
		}

		return sourceCode;
	}
	
	public static String getSourceFileName(JpaEntityDefinition jpaEntityDefinition) {

		String jpaEntityPackagePath = SystemPropertiesReader.getString("repository-package");
		String filePath = jpaEntityPackagePath + jpaEntityDefinition.getJavaClassName() + "Repository.java";

		return filePath;
	}
}
