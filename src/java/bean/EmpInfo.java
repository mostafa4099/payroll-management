/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author DELL
 */
public class EmpInfo {

    private int emp_id;
    private String emp_name;
    private String emp_uname;
    private String emp_pass;
    private String emp_department;
    private String emp_post;
    private String emp_email;
    private String emp_address;
    private String emp_mobile;
    private Date emp_dob;

    public EmpInfo() {
    }

    public EmpInfo(int emp_id, String emp_name, String emp_uname, String emp_pass, String emp_department, String emp_post, String emp_email, String emp_address, String emp_mobile, Date emp_dob) {
        this.emp_id = emp_id;
        this.emp_name = emp_name;
        this.emp_uname = emp_uname;
        this.emp_pass = emp_pass;
        this.emp_department = emp_department;
        this.emp_post = emp_post;
        this.emp_email = emp_email;
        this.emp_address = emp_address;
        this.emp_mobile = emp_mobile;
        this.emp_dob = emp_dob;
    }

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getEmp_uname() {
        return emp_uname;
    }

    public void setEmp_uname(String emp_uname) {
        this.emp_uname = emp_uname;
    }

    public String getEmp_pass() {
        return emp_pass;
    }

    public void setEmp_pass(String emp_pass) {
        this.emp_pass = emp_pass;
    }

    public String getEmp_department() {
        return emp_department;
    }

    public void setEmp_department(String emp_department) {
        this.emp_department = emp_department;
    }

    public String getEmp_post() {
        return emp_post;
    }

    public void setEmp_post(String emp_post) {
        this.emp_post = emp_post;
    }

    public String getEmp_email() {
        return emp_email;
    }

    public void setEmp_email(String emp_email) {
        this.emp_email = emp_email;
    }

    public String getEmp_address() {
        return emp_address;
    }

    public void setEmp_address(String emp_address) {
        this.emp_address = emp_address;
    }

    public String getEmp_mobile() {
        return emp_mobile;
    }

    public void setEmp_mobile(String emp_mobile) {
        this.emp_mobile = emp_mobile;
    }

    public Date getEmp_dob() {
//        DateFormat dateFormat = new SimpleDateFormat("MMMM dd, yyyy");
//        emp_dob=new Date(dateFormat.format(emp_dob));
//         System.out.println("date:"+emp_dob.toString());
        //emp_dob=dateFormat.parse(emp_dob);
        return emp_dob;
    }

    public void setEmp_dob(Date emp_dob) {
        
        this.emp_dob = emp_dob;
    }

}
