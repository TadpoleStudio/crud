package com.tadpole.rest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;
import com.tadpole.entity.Customer;
import com.tadpole.repository.CustomerRepository;
import com.tadpole.service.CustomerService;

@Component
@Path("/customer")
public class CustomerResource {

	@Autowired
	private CustomerRepository customerRepository;
	
	@Resource(name = "CustomerService")
	private CustomerService customerService;

	@GET
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Customer getCustomerById(@PathParam("id") Integer id) {

		Customer customer = customerRepository.findOne(id);

		return customer;

	}
	
	@GET
	@Path("/all")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Customer> getCustomers() {

		List<Customer> customers = customerRepository.findAll();

		return customers;

	}
	
	@GET
	@Path("/search")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Customer> getCustomersWithConditions(@QueryParam("queryParam") String queryParam) {

		if (queryParam == null) {
			
			return new ArrayList<Customer>();
		}
		
		queryParam = "%" + queryParam + "%";
		
		List<Customer> customers = customerRepository.findByNameLikeOrPhoneLike(queryParam, queryParam);

		return customers;

	}
	
	@POST
	@Path("/save")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Customer saveOrUpdateCustomer(Customer customer) {
		
		Customer saved = customerService.saveOrUpdateCustomer(customer);
		
		return saved;
	}
	
	@POST
	@Path("/delete/{id}")
	public Response deleteCustomer(@PathParam("id") String id) {
		
		try {
			customerService.deleteCustomer(id);
			
		} catch (Exception e) {
			
			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
		}
		
		return Response.ok().build();
	}
	
//	@POST
//	@Path("/fileUpload")
//	public Response fileUpload(@FormDataParam("file") InputStream uploadedInputStream, @FormDataParam("file") FormDataContentDisposition fileDetail) {
//		
//		String uploadedFileLocation = "D:\\data\\Jerry\\crud\\src\\main\\webapp\\public\\" + fileDetail.getFileName();
//		 
//		// save it
//		writeToFile(uploadedInputStream, uploadedFileLocation);
// 
//		String output = "File uploaded to : " + uploadedFileLocation;
//		
//		return Response.status(200).entity(output).build();
//	}
	
	// save uploaded file to new location
	private void writeToFile(InputStream uploadedInputStream, String uploadedFileLocation) {

		try {
			OutputStream out = new FileOutputStream(new File(uploadedFileLocation));
			int read = 0;
			byte[] bytes = new byte[1024];

			out = new FileOutputStream(new File(uploadedFileLocation));
			while ((read = uploadedInputStream.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
			out.flush();
			out.close();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

}
