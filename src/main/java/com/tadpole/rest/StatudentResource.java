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

import com.tadpole.entity.Statudent;
import com.tadpole.repository.StatudentRepository;
import com.tadpole.service.StatudentService;

@Component
@Path("/statudent")
public class StatudentResource {

	@Autowired
	private StatudentRepository statudentRepository;
	
	@Resource(name = "StatudentService")
	private StatudentService statudentService;

	@GET
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Statudent getStatudentById(@PathParam("id") Integer id) {

		Statudent statudent = statudentRepository.findOne(id);

		return statudent;

	}
	
	
	@POST
	@Path("/save")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Statudent saveOrUpdateStatudent(Statudent statudent) {
		
		Statudent saved = statudentService.saveOrUpdateStatudent(statudent);
		
		return saved;
	}
	
	@POST
	@Path("/delete/{id}")
	public Response deleteStatudent(@PathParam("id") String id) {
		
		try {
			statudentService.deleteStatudent(id);
			
		} catch (Exception e) {
			
			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
		}
		
		return Response.ok().build();
	}

}
