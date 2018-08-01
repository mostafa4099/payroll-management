/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;

import bean.Salary;
import dao.SalaryDao;
import java.util.Date;
import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author DELL
 */
@Path("/salary")
public class SalaryRS {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Salary> getAllSalary() {
        List<Salary> list = new SalaryDao().getAllSalary();
        return list;
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Salary addSalary(Salary salary) {
        Salary sal = new SalaryDao().addSalary(salary);
        System.out.println(sal.getEmp_id());
        return sal;
    }

    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Salary updateSalary(Salary salary) {
        Salary sal = new SalaryDao().updateSalary(salary);
        return sal;
    }

    @DELETE
    @Path("/{emp_id}/{salary_id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Salary deleteSalary(@PathParam("emp_id") int emp_id, @PathParam("salary_id") int salary_id) {
        boolean status = new SalaryDao().deleteSalary(emp_id, salary_id);
        if (status) {
            Salary salary = new Salary();
            return salary;
        }
        return null;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Salary> getSalaryById(@PathParam("id") int id) {
        List<Salary> list = new SalaryDao().getSalaryById(id);
        return list;
    }

    @GET
    @Path("/{emp_id}/{salary_id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Salary getSalaryBySalID(@PathParam("emp_id") int emp_id, @PathParam("salary_id") int salary_id) {
        Salary salary = new SalaryDao().getSalaryBySalID(emp_id, salary_id);
        return salary;
    }

}
