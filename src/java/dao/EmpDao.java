/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.EmpInfo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DBConnection;

/**
 *
 * @author DELL
 */
public class EmpDao {

    SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");

    public EmpInfo addEmp(EmpInfo emp) {
        System.out.println("Date: " + emp.getEmp_dob().toString());

        String emp_dob = s.format(emp.getEmp_dob());

        String sql = "insert into emp_info(emp_name, emp_uname, emp_pass, emp_department, emp_post, emp_email, emp_address, emp_mobile, emp_dob) values('" + emp.getEmp_name() + "','" + emp.getEmp_uname() + "','" + emp.getEmp_pass() + "','" + emp.getEmp_department() + "','" + emp.getEmp_post() + "','" + emp.getEmp_email() + "','" + emp.getEmp_address() + "','" + emp.getEmp_mobile() + "','" + emp_dob + "')";
        try {
            int value = DBConnection.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return emp;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public EmpInfo updateEmp(EmpInfo emp) {
        String emp_dob = s.format(emp.getEmp_dob());

        String sql = "update emp_info set emp_name='" + emp.getEmp_name() + "', emp_uname='" + emp.getEmp_uname() + "', emp_pass='" + emp.getEmp_pass() + "', emp_department='" + emp.getEmp_department() + "', emp_post='" + emp.getEmp_post() + "', emp_email='" + emp.getEmp_email() + "', emp_address='" + emp.getEmp_address() + "', emp_mobile='" + emp.getEmp_mobile() + "', emp_dob='" + emp_dob + "' where emp_id='" + emp.getEmp_id() + "'";
        try {
            int value = DBConnection.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return emp;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean deleteEmp(int id) {

        String sql = "delete from emp_info where emp_id='" + id + "'";
        try {
            int value = DBConnection.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public List<EmpInfo> getAllEmp() {
        List<EmpInfo> list = new ArrayList<>();
        String sql = "select * from emp_info";
        try {
            ResultSet rs = DBConnection.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                list.add(new EmpInfo(rs.getInt("emp_id"), rs.getString("emp_name"), rs.getString("emp_uname"), rs.getString("emp_pass"), rs.getString("emp_department"), rs.getString("emp_post"), rs.getString("emp_email"), rs.getString("emp_address"), rs.getString("emp_mobile"), rs.getDate("emp_dob")));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public EmpInfo getEmp(int id) {
        EmpInfo emp = new EmpInfo();
        String sql = "select * from emp_info where emp_id='" + id + "'";
        try {
            ResultSet rs = DBConnection.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                emp.setEmp_id(rs.getInt("emp_id"));
                emp.setEmp_name(rs.getString("emp_name"));
                emp.setEmp_uname(rs.getString("emp_uname"));
                emp.setEmp_pass(rs.getString("emp_pass"));
                emp.setEmp_department(rs.getString("emp_department"));
                emp.setEmp_post(rs.getString("emp_post"));
                emp.setEmp_email(rs.getString("emp_email"));
                emp.setEmp_address(rs.getString("emp_address"));
                emp.setEmp_mobile(rs.getString("emp_mobile"));
                emp.setEmp_dob(rs.getDate("emp_dob"));
            }
            return emp;
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public EmpInfo getEmpId(String name, String email, String mobile) {
        EmpInfo emp = new EmpInfo();
        String sql = "select * from emp_info where emp_name='" + name + "' and emp_email='" + email + "' and emp_mobile='" + mobile + "'";
        try {
            ResultSet rs = DBConnection.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                emp.setEmp_id(rs.getInt("emp_id"));
                emp.setEmp_name(rs.getString("emp_name"));
                emp.setEmp_uname(rs.getString("emp_uname"));
                emp.setEmp_pass(rs.getString("emp_pass"));
                emp.setEmp_department(rs.getString("emp_department"));
                emp.setEmp_post(rs.getString("emp_post"));
                emp.setEmp_email(rs.getString("emp_email"));
                emp.setEmp_address(rs.getString("emp_address"));
                emp.setEmp_mobile(rs.getString("emp_mobile"));
                emp.setEmp_dob(rs.getDate("emp_dob"));
            }
            return emp;
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
