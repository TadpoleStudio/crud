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
	public Response getCustomerById(@PathParam("id") Integer id) {

		Customer customer = customerRepository.findOne(id);

		return Response.status(200).entity(customer).header("Access-Control-Allow-Origin", "*").header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT").header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, X-Codingpedia").build();

	}
	
	@GET
	@Path("/all")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getCustomers() {

		List<Customer> customers = customerRepository.findAll();

		return Response.status(200).entity(customers).header("Access-Control-Allow-Origin", "*").header("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT").header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, X-Codingpedia").build();

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
	public Response deleteCustomer(@PathParam("id")
	String id) {

		try {
			customerService.deleteCustomer(id);

		} catch (Exception e) {

			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
		}

		return Response.ok().build();
	}

}
