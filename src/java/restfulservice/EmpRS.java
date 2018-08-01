/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;

import bean.EmpInfo;
import dao.EmpDao;
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
@Path("/employee")
public class EmpRS {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<EmpInfo> getAllEmp() {
        List<EmpInfo> list = new EmpDao().getAllEmp();
        return list;
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public EmpInfo addEmp(EmpInfo emp) {
        EmpInfo info = new EmpDao().addEmp(emp);
        System.out.println(info.getEmp_name());
        return info;
    }

    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public EmpInfo updateEmp(EmpInfo emp) {
        EmpInfo info = new EmpDao().updateEmp(emp);
        return info;
    }

    @DELETE
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public EmpInfo deleteEmp(@PathParam("id") int id) {
        boolean status = new EmpDao().deleteEmp(id);
        if (status) {
            EmpInfo emp = new EmpInfo();
            return emp;
        }
        return null;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public EmpInfo getEmp(@PathParam("id") int id) {
        EmpInfo emp = new EmpDao().getEmp(id);
        return emp;
    }

    @GET
    @Path("/{name}/{email}/{mobile}")
    @Produces(MediaType.APPLICATION_JSON)
    public EmpInfo getEmpId(@PathParam("name") String name, @PathParam("email") String email, @PathParam("mobile") String mobile) {
        EmpInfo emp = new EmpDao().getEmpId(name, email, mobile);
        return emp;
    }

}
