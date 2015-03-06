package com.tadpole.service.impl;

import java.util.Date;

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

import com.tadpole.entity.Statudent;
import com.tadpole.repository.StatudentRepository;
import com.tadpole.service.StatudentService;
import com.tadpole.vo.search.StatudentSearchVo;

@Service("StatudentService")
public class StatudentServiceImpl implements StatudentService {

	@Autowired
	StatudentRepository statudentRepository;

	public Statudent saveOrUpdateStatudent(Statudent statudent) {

		return statudentRepository.saveAndFlush(statudent);
	}
	
	public void deleteStatudent(String statudentId) {

		statudentRepository.delete(Integer.valueOf(statudentId));
	}
	
	public Page<Statudent> loadStatudents(String currentIndex, StatudentSearchVo statudentSearchVo) {
		Specifications<Statudent> statudentSpecification = null;
		if (StringUtils.isNotBlank(statudentSearchVo.getNumber())) {

         	if (statudentSpecification == null) {
                statudentSpecification = Specifications.where(statudentNumberSpecification(statudentSearchVo.getNumber()));
         	} else {
                statudentSpecification.and(statudentNumberSpecification(statudentSearchVo.getNumber()));
        	}
 		}
		if (StringUtils.isNotBlank(statudentSearchVo.getClassNumber())) {

         	if (statudentSpecification == null) {
                statudentSpecification = Specifications.where(statudentClassNumberSpecification(statudentSearchVo.getClassNumber()));
         	} else {
                statudentSpecification.and(statudentClassNumberSpecification(statudentSearchVo.getClassNumber()));
        	}
 		}
		if (statudentSearchVo.getAge() != null) {

         	if (statudentSpecification == null) {
                statudentSpecification = Specifications.where(statudentAgeSpecification(statudentSearchVo.getAge()));
         	} else {
                statudentSpecification.and(statudentAgeSpecification(statudentSearchVo.getAge()));
        	}
 		}
		if (statudentSearchVo.getBirthday() != null) {

         	if (statudentSpecification == null) {
                statudentSpecification = Specifications.where(statudentBirthdaySpecification(statudentSearchVo.getBirthday()));
         	} else {
                statudentSpecification.and(statudentBirthdaySpecification(statudentSearchVo.getBirthday()));
        	}
 		}

		if (statudentSpecification == null) {
       		return statudentRepository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));
		} else {
        	return statudentRepository.findAll(statudentSpecification, new PageRequest(Integer.valueOf(currentIndex) - 1, 10));
		}		
		
	}

	private Specification<Statudent> statudentNumberSpecification(final String number) {

		return new Specification<Statudent>(){

			public Predicate toPredicate(Root<Statudent> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("number"), number);
			}
		};
	}
	private Specification<Statudent> statudentClassNumberSpecification(final String classNumber) {

		return new Specification<Statudent>(){

			public Predicate toPredicate(Root<Statudent> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("classNumber"), classNumber);
			}
		};
	}
	private Specification<Statudent> statudentAgeSpecification(final Integer age) {

		return new Specification<Statudent>(){

			public Predicate toPredicate(Root<Statudent> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("age"), age);
			}
		};
	}
	private Specification<Statudent> statudentBirthdaySpecification(final Date birthday) {

		return new Specification<Statudent>(){

			public Predicate toPredicate(Root<Statudent> root, CriteriaQuery<?> query, CriteriaBuilder cb) {

				return cb.equal(root.get("birthday"), birthday);
			}
		};
	}
}
