<%-- 
    Document   : index
    Created on : Apr 25, 2018, 10:38:13 AM
    Author     : Mostafa-R34
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="../resource/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../resource/js/jquery.min.js" type="text/javascript"></script>
        <script src="../resource/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../resource/js/angular.min.js" type="text/javascript"></script>
        <script src="../resource/js/app.js" type="text/javascript"></script>
        <link href="../resource/css/admin.css" rel="stylesheet" type="text/css"/>
        <title>Pay Roll Management</title>
    </head>
    <body ng-controller="myCtrl">
        <div class="container-fluid">
            <div class="row">
                <div class="header col-md-12">
                    <div class="row">
                        <img class="img-responsive" src="../resource/images/WebHR_Payroll1.jpg" alt="Chania" id="header"/>
                    </div>
                </div>
            </div>


            <div class="menu col-md-12">
                <div class="row">
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <a class="navbar-brand" href="home.jsp">SNA Group</a>
                            </div>
                            <ul class="nav navbar-nav">
                                <li><a href="home.jsp">Home</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="addemployee.jsp">Add Employee</a></li>
                                        <li><a href="updateemployee.jsp">Update Employee Info</a></li>
                                        <li><a href="deleteemployee.jsp">Remove Employee</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Salary
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li class="active"><a href="addsalary.jsp">Pay Salary</a></li>
                                        <li><a href="updatesalary.jsp">Update Salary</a></li>
                                        <li><a href="deletesalary.jsp">Delete Salary Info</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Report
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="employeereport.jsp">Employee History</a></li>
                                        <li><a href="salaryreport.jsp">Salary History</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href=""><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>

            <div class="content col-md-12">
                <div class="row">
                    <div class="alert alert-success alert-dismissible" ng-show="message">
                        <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                        <strong>{{message}}</strong>
                    </div>
                    <div class="alert alert-success alert-dismissible" ng-show="error_message">
                        <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                        <strong>{{error_message}}</strong>
                    </div>
                    <div class="panel panel-info">
                        <div class="panel-heading"><h4>Pay Employee Salary</h4></div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="">
                                <div>
                                    <div class="well well-sm">
                                        <h4 style="font-weight: bold; text-align: left; color: #009999;">Check Employee:</h4>
                                        <div class="form-group">
                                            <label class="control-label col-sm-4" for="id">Employee ID:</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="id" placeholder="Enter Employee ID" ng-model="emp_id">
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#myModal" ng-click="getEmp(emp_id)">Check</button>
                                        </br>
                                        </br>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-lg">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 class="modal-title" style="text-align: center; color: #222; font-weight: bold;">Pay Employee Salary</h3>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" action="">
                                <div class="well well-lg">
                                    <div class="well well-lg">
                                        <div>
                                            <h4 style="font-weight: bold; text-align: left; color: #009999;">Employee Info:</h4>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="id">Employee Id:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickEmp.emp_id" type="text" class="form-control" id="id" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="name">Employee Name:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickEmp.emp_name" type="text" class="form-control" id="name" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="dep">Department:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickEmp.emp_department" type="text" class="form-control" id="dep" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="post">Employee Post:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickEmp.emp_post" type="text" class="form-control" id="post" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="well well-sm">
                                        <div>
                                            <h4 style="font-weight: bold; text-align: left; color: #009999;">Calculate Salary:</h4>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="month">Month & Year:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.month" type="month" class="form-control" id="month" placeholder="MMM-yyyy">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="working">Working Days:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.working_day" type="text" class="form-control" id="working" placeholder="Enter Workin Days Of Month">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="over_hour">Overtime Hours:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.overtime_hours" type="text" class="form-control" id="over_hour" placeholder="Enter Overtime Hours">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="basic">Basic Salary:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.basic_salary" type="text" class="form-control" id="basic" placeholder="Enter Basic Salary">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="fastival">Festival Allowance:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.fastival" type="text" class="form-control" id="fastival" placeholder="Enter Festival Allowance">
                                                </div>
                                            </div>
                                            <button ng-click="calculation(newSalary)" type="button" class="btn btn-primary pull-right">Calculate</button>
                                        </div></br></br>
                                    </div>
                                    <div class="well well-lg">
                                        <div>
                                            <h4 style="font-weight: bold; text-align: left; color: #009999;">Salary Description:</h4>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="over_sal">Overtime Salary:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.overtime_salary" type="text" class="form-control" id="over_sal" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="house_rent">House Rent:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.house_rent" type="text" class="form-control" id="house_rent" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="medical">Medical Allowance:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.medical" type="text" class="form-control" id="medical" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="transfort">Transport Allowance:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.transfort" type="text" class="form-control" id="transfort" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="total">Total Salary:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newSalary.total" type="text" class="form-control" id="total" readonly>
                                                </div>
                                            </div>
                                            <button type="button" class="btn btn-default pull-right" data-dismiss="modal" style="margin-left: 5px;">Close</button>
                                            <button type="button" class="btn btn-primary pull-right" data-dismiss="modal" ng-click="saveSalary(clickEmp.emp_id)">Submit</button>
                                        </div></br>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div class="footer col-md-12">
                                &copy;SNA Management System.
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="footer col-md-12">
                &copy;SNA Management System.
            </div>
        </div>
    </body>
</html>
