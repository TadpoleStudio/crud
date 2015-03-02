package com.tadpole.service;

import org.springframework.data.domain.Page;

import com.tadpole.entity.Teacher;
import com.tadpole.vo.search.TeacherSearchVo;

public interface TeacherService {

	Teacher saveOrUpdateTeacher(Teacher teacher);

	void deleteTeacher(String teacherId);
	
	Page<Teacher> loadTeachers(String currentIndex, TeacherSearchVo teacherSearchVo);
}
