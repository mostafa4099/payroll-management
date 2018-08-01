/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.EmpInfo;
import bean.Salary;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.validation.Payload;
import util.DBConnection;

/**
 *
 * @author DELL
 */
public class SalaryDao {

    DateFormat s = new SimpleDateFormat("yyyy-MM-dd");

    public Salary addSalary(Salary salary) {

        String pay_month = s.format(salary.getMonth());

        String pay_date = s.format(new Date());

        String sql = "insert into salary(emp_id, pay_month, working_day, overtime_hours, basic_salary, overtime_salary, house_rent, medical, transfort, fastival, total, pay_date) values('" + salary.getEmp_id() + "','" + pay_month + "','" + salary.getWorking_day() + "','" + salary.getOvertime_hours() + "','" + salary.getBasic_salary() + "','" + salary.getOvertime_salary() + "','" + salary.getHouse_rent() + "','" + salary.getMedical() + "','" + salary.getTransfort() + "','" + salary.getFastival() + "','" + salary.getTotal() + "','" + pay_date + "')";
        try {
            int value = DBConnection.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return salary;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Salary updateSalary(Salary salary) {

        String sql = "update salary set working_day='" + salary.getWorking_day() + "', overtime_hours='" + salary.getOvertime_hours() + "', basic_salary='" + salary.getBasic_salary() + "', overtime_salary='" + salary.getOvertime_salary() + "', house_rent='" + salary.getHouse_rent() + "', medical='" + salary.getMedical() + "', transfort='" + salary.getTransfort() + "', fastival='" + salary.getFastival() + "', total='" + salary.getTotal() + "' where emp_id='" + salary.getEmp_id() + "' and salary_id='" + salary.getSalary_id() + "'";
        try {
            int value = DBConnection.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return salary;
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean deleteSalary(int emp_id, int salary_id) {
        String sql = "delete from salary where emp_id='" + emp_id + "' and salary_id='" + salary_id + "'";
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

    public List<Salary> getAllSalary() {
        List<Salary> list = new ArrayList<>();
        String sql = "select * from salary";
        try {
            ResultSet rs = DBConnection.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                list.add(new Salary(rs.getInt("salary_id"), rs.getInt("emp_id"), rs.getDate("pay_month"), rs.getInt("working_day"), rs.getInt("overtime_hours"), rs.getDouble("basic_salary"), rs.getDouble("overtime_salary"), rs.getDouble("house_rent"), rs.getDouble("medical"), rs.getDouble("transfort"), rs.getDouble("fastival"), rs.getDouble("total"), rs.getDate("pay_date")));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Salary> getSalaryById(int id) {
        List<Salary> list = new ArrayList<>();
        String sql = "select * from salary where emp_id='" + id + "'";
        try {
            ResultSet rs = DBConnection.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                list.add(new Salary(rs.getInt("salary_id"), rs.getInt("emp_id"), rs.getDate("pay_month"), rs.getInt("working_day"), rs.getInt("overtime_hours"), rs.getDouble("basic_salary"), rs.getDouble("overtime_salary"), rs.getDouble("house_rent"), rs.getDouble("medical"), rs.getDouble("transfort"), rs.getDouble("fastival"), rs.getDouble("total"), rs.getDate("pay_date")));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Salary getSalaryBySalID(int emp_id, int salary_id) {
        System.out.println(salary_id);
        Salary salary = new Salary();
        String sql = "select * from salary where emp_id='" + emp_id + "' and salary_id='" + salary_id + "'";
        try {
            ResultSet rs = DBConnection.getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                salary.setEmp_id(rs.getInt("emp_id"));
                salary.setSalary_id(rs.getInt("salary_id"));
                salary.setMonth(rs.getDate("pay_month"));
                salary.setWorking_day(rs.getInt("working_day"));
                salary.setOvertime_hours(rs.getInt("overtime_hours"));
                salary.setBasic_salary(rs.getDouble("basic_salary"));
                salary.setOvertime_salary(rs.getDouble("overtime_salary"));
                salary.setHouse_rent(rs.getDouble("house_rent"));
                salary.setMedical(rs.getDouble("medical"));
                salary.setTransfort(rs.getDouble("transfort"));
                salary.setFastival(rs.getDouble("fastival"));
                salary.setTotal(rs.getDouble("total"));
                salary.setPay_date(rs.getDate("pay_date"));
            }
            return salary;
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
