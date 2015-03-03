package com.tadpole.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tadpole.entity.Teacher;
import com.tadpole.repository.TeacherRepository;

@Component
@Path("/hello")
public class TestService {
	
	@Autowired
	TeacherRepository teacherRepository;
	
	@GET
	@Path("/mkyong")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Teacher savePayment() {
 
		Teacher teacher = teacherRepository.findOne(1);
		return teacher;
 
	}

}
