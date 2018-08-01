/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author DELL
 */
public class Login {

    private int login_id;
    private String uname;
    private String pass;
    private String roll;
    private EmpInfo emp;

    public Login(int login_id, String uname, String pass, String roll, EmpInfo emp) {
        this.login_id = login_id;
        this.uname = uname;
        this.pass = pass;
        this.roll = roll;
        this.emp = emp;
    }

    public Login() {
    }

    public int getLogin_id() {
        return login_id;
    }

    public void setLogin_id(int login_id) {
        this.login_id = login_id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRoll() {
        return roll;
    }

    public void setRoll(String roll) {
        this.roll = roll;
    }

    public EmpInfo getEmp() {
        return emp;
    }

    public void setEmp(EmpInfo emp) {
        this.emp = emp;
    }

}
