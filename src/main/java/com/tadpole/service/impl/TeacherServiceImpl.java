package com.tadpole.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.tadpole.entity.Teacher;
import com.tadpole.repository.TeacherRepository;
import com.tadpole.service.TeacherService;

@Service("TeacherService")
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	TeacherRepository teacherRepository;

	public Teacher saveOrUpdateTeacher(Teacher teacher) {

		return teacherRepository.saveAndFlush(teacher);
	}
	
	public Page<Teacher> loadTeachers(String currentIndex) {

		return teacherRepository.findAll(new PageRequest(Integer.valueOf(currentIndex), 10));
	}

}
