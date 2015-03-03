package com.tadpole.rest;

import javax.annotation.Resource;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tadpole.entity.Teacher;
import com.tadpole.repository.TeacherRepository;
import com.tadpole.service.TeacherService;

@Component
@Path("/teacher")
public class TeacherResource {

	@Autowired
	private TeacherRepository teacherRepository;
	
	@Resource(name = "TeacherService")
	private TeacherService teacherService;

	@GET
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Teacher getTeacherById(@PathParam("id") Integer id) {

		Teacher teacher = teacherRepository.findOne(id);

		return teacher;

	}
	
	
	@POST
	@Path("/save")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Teacher saveOrUpdateTeacher(Teacher teacher) {
		
		Teacher saved = teacherService.saveOrUpdateTeacher(teacher);
		
		return saved;
	}
	
	@POST
	@Path("/delete/{id}")
	public Response deleteTeacher(@PathParam("id") String id) {
		
		try {
			teacherService.deleteTeacher(id);
			
		} catch (Exception e) {
			
			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
		}
		
		return Response.ok().build();
	}

}
