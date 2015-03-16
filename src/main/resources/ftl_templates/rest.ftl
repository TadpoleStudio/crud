package com.tadpole.rest;

import java.util.List;

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

import com.tadpole.entity.${javaClassName};
import com.tadpole.repository.${javaClassName}Repository;
import com.tadpole.service.${javaClassName}Service;

@Component
@Path("/${firstLetterLowerCaseJavaClassName}")
public class ${javaClassName}Resource {

	@Autowired
	private ${javaClassName}Repository ${firstLetterLowerCaseJavaClassName}Repository;
	
	@Resource(name = "${javaClassName}Service")
	private ${javaClassName}Service ${firstLetterLowerCaseJavaClassName}Service;

	@GET
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response get${javaClassName}ById(@PathParam("id") Integer id) {

		${javaClassName} ${firstLetterLowerCaseJavaClassName} = ${firstLetterLowerCaseJavaClassName}Repository.findOne(id);

		return Response.status(200).entity(${firstLetterLowerCaseJavaClassName})
			.header("Access-Control-Allow-Origin", "*")
			.header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT")
			.header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, X-Codingpedia").build();

	}
	
	@GET
	@Path("/all")
	@Produces(MediaType.APPLICATION_JSON)
	public Response get${javaClassName}s() {

		List<${javaClassName}> ${firstLetterLowerCaseJavaClassName}s = ${firstLetterLowerCaseJavaClassName}Repository.findAll();

		return Response.status(200).entity(${firstLetterLowerCaseJavaClassName}s)
			.header("Access-Control-Allow-Origin", "*")
			.header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT")
			.header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, X-Codingpedia").build();

	}
	
	@POST
	@Path("/save")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response saveOrUpdate${javaClassName}(${javaClassName} ${firstLetterLowerCaseJavaClassName}) {
		
		${javaClassName} saved = ${firstLetterLowerCaseJavaClassName}Service.saveOrUpdate${javaClassName}(${firstLetterLowerCaseJavaClassName});
		
		return Response.status(200).entity(saved)
			.header("Access-Control-Allow-Origin", "*")
			.header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT")
			.header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, X-Codingpedia").build();
	}
	
	@POST
	@Path("/delete/{id}")
	public Response delete${javaClassName}(@PathParam("id") String id) {
		
		try {
			${firstLetterLowerCaseJavaClassName}Service.delete${javaClassName}(id);
			
		} catch (Exception e) {
			
			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
		}
		
		return Response.ok().build();
	}

}
