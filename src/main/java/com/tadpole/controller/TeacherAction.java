package com.tadpole.controller;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.tadpole.entity.Teacher;
import com.tadpole.service.TeacherService;
import com.tadpole.vo.ResponseVo;
import com.tadpole.vo.PagedElement;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;

@Component("TeacherAction")
@Scope("prototype")
public class TeacherAction extends AbstractAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "TeacherService")
	private TeacherService teacherService;

	public String saveOrUpdateTeacher() {
	
		try {
			String teacherJson = getParameter("teacherJson");

			if (StringUtils.isEmpty(teacherJson)) {
				setResponse(ResponseVo.newFailMessage("Bad request : no data found to save or update."));

				return SUCCESS;
			}

			Teacher teacher = (Teacher)JSONObject.toBean(JSONObject.fromObject(teacherJson), Teacher.class);

			Teacher saved = teacherService.saveOrUpdateTeacher(teacher);
			
			ResponseVo response = ResponseVo.newSuccessMessage("The teacher is successfully saved.");
			response.setObject(saved);
			
			setResponse(response);
			
		} catch (Exception e) {
			
			setResponse(ResponseVo.newFailMessage(e.getMessage()));
		}

		return SUCCESS;
	}

	public String loadTeachers() {

		try {
			String currentIndex = getParameter("currentIndex");
			if (StringUtils.isEmpty(currentIndex)) {
        		currentIndex = "1";
			}
			Page<Teacher> teachers = teacherService.loadTeachers(currentIndex);

			PagedElement<Teacher> pageElement = new PagedElement<Teacher>(teachers);

			ResponseVo response = ResponseVo.newSuccessMessage("loaded successfully.");
			response.setObject(pageElement);

			setResponse(response);

		} catch (Exception e) {
			setResponse(ResponseVo.newFailMessage(e.getMessage()));

		}

		return SUCCESS;
	}
}
