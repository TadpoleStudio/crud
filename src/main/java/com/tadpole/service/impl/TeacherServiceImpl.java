package com.tadpole.service.impl;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;

import com.tadpole.entity.Teacher;
import com.tadpole.repository.TeacherRepository;
import com.tadpole.service.TeacherService;
import com.tadpole.vo.search.TeacherSearchVo;

@Service("TeacherService")
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	TeacherRepository teacherRepository;

	public Teacher saveOrUpdateTeacher(Teacher teacher) {

		return teacherRepository.saveAndFlush(teacher);
	}
	
	public void deleteTeacher(String teacherId) {

		teacherRepository.delete(Integer.valueOf(teacherId));
	}
	
	public Page<Teacher> loadTeachers(String currentIndex, TeacherSearchVo teacherSearchVo) {
		Specifications<Teacher> teacherSpecification = null;
		if (StringUtils.isNotBlank(teacherSearchVo.getName())) {
			
       	 	teacherSpecification = Specifications.where(teacherNameSpecification(teacherSearchVo.getName()));
		}
		if (teacherSearchVo.getAge() != null) {

         	if (teacherSpecification == null) {
                teacherSpecification = Specifications.where(teacherAgeSpecification(teacherSearchVo.getAge()));
         	} else {
                teacherSpecification.and(teacherAgeSpecification(teacherSearchVo.getAge()));
        	}
 		}
		if (StringUtils.isNotBlank(teacherSearchVo.getSalary())) {

         	if (teacherSpecification == null) {
                teacherSpecification = Specifications.where(teacherSalarySpecification(teacherSearchVo.getSalary()));
         	} else {
                teacherSpecification.and(teacherSalarySpecification(teacherSearchVo.getSalary()));
        	}
 		}

		if (teacherSpecification == null) {
       		return teacherRepository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));
		} else {
        	return teacherRepository.findAll(teacherSpecification, new PageRequest(Integer.valueOf(currentIndex) - 1, 10));
		}		
		
	}

	private Specification<Teacher> teacherNameSpecification(final String name) {

		return new Specification<Teacher>(){

			public Predicate toPredicate(Root<Teacher> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("name"), name);
			}
		};
	}
	private Specification<Teacher> teacherAgeSpecification(final Integer age) {

		return new Specification<Teacher>(){

			public Predicate toPredicate(Root<Teacher> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("age"), age);
			}
		};
	}
	private Specification<Teacher> teacherSalarySpecification(final String salary) {

		return new Specification<Teacher>(){

			public Predicate toPredicate(Root<Teacher> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("salary"), salary);
			}
		};
	}
}
