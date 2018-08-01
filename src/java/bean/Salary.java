/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class Salary {

    private int salary_id;
    private int emp_id;
    private Date month;
    private int working_day;
    private int overtime_hours;
    private double basic_salary;
    private double overtime_salary;
    private double house_rent;
    private double medical;
    private double transfort;
    private double fastival;
    private double total;
    private Date pay_date;

    public Salary() {
    }

    public Salary(int salary_id, int emp_id, Date month, int working_day, int overtime_hours, double basic_salary, double overtime_salary, double house_rent, double medical, double transfort, double fastival, double total, Date pay_date) {
        this.salary_id = salary_id;
        this.emp_id = emp_id;
        this.month = month;
        this.working_day = working_day;
        this.overtime_hours = overtime_hours;
        this.basic_salary = basic_salary;
        this.overtime_salary = overtime_salary;
        this.house_rent = house_rent;
        this.medical = medical;
        this.transfort = transfort;
        this.fastival = fastival;
        this.total = total;
        this.pay_date = pay_date;
    }

    public int getSalary_id() {
        return salary_id;
    }

    public void setSalary_id(int salary_id) {
        this.salary_id = salary_id;
    }

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public Date getMonth() {
        return month;
    }

    public void setMonth(Date month) {
        this.month = month;
    }

    public int getWorking_day() {
        return working_day;
    }

    public void setWorking_day(int working_day) {
        this.working_day = working_day;
    }

    public int getOvertime_hours() {
        return overtime_hours;
    }

    public void setOvertime_hours(int overtime_hours) {
        this.overtime_hours = overtime_hours;
    }

    public double getBasic_salary() {
        return basic_salary;
    }

    public void setBasic_salary(double basic_salary) {
        this.basic_salary = basic_salary;
    }

    public double getOvertime_salary() {
        return overtime_salary;
    }

    public void setOvertime_salary(double overtime_salary) {
        this.overtime_salary = overtime_salary;
    }

    public double getHouse_rent() {
        return house_rent;
    }

    public void setHouse_rent(double house_rent) {
        this.house_rent = house_rent;
    }

    public double getMedical() {
        return medical;
    }

    public void setMedical(double medical) {
        this.medical = medical;
    }

    public double getTransfort() {
        return transfort;
    }

    public void setTransfort(double transfort) {
        this.transfort = transfort;
    }

    public double getFastival() {
        return fastival;
    }

    public void setFastival(double fastival) {
        this.fastival = fastival;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getPay_date() {
        return pay_date;
    }

    public void setPay_date(Date pay_date) {
        this.pay_date = pay_date;
    }
    
    
}