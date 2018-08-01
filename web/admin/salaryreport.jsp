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
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Salary
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="addsalary.jsp">Pay Salary</a></li>
                                        <li><a href="updatesalary.jsp">Update Salary</a></li>
                                        <li><a href="deletesalary.jsp">Delete Salary Info</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Report
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="employeereport.jsp">Employee History</a></li>
                                        <li class="active"><a href="salaryreport.jsp">Salary History</a></li>
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
                    <div class="panel panel-info">
                        <div class="panel-heading"><h3>Salary Report</h3></div>
                        <div class="panel-body">
                            <div class="alert alert-success alert-dismissible" ng-show="message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>{{message}}</strong>
                            </div>
                            <div class="alert alert-success alert-dismissible" ng-show="error_message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>{{error_message}}</strong>
                            </div>
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Transection ID</th>
                                        <th>Employee ID</th>
                                        <th>Month & Year</th>
                                        <th>Working Days</th>
                                        <th>Overtime(Hours)</th>
                                        <th>Basic Salary</th>
                                        <th>Overtime Salary</th>
                                        <th>House Rent</th>
                                        <th>Medical Allowance</th>
                                        <th>Transport Allowance</th>
                                        <th>Festival Allowance</th>
                                        <th>Total Salary</th>
                                        <th>Pay Date</th>
                                        <th colspan="2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="salary in salaries">
                                        <td>{{salary.salary_id}}</td>
                                        <td>{{salary.emp_id}}</td>
                                        <td>{{salary.month| date : "MMM-yyyy"}}</td>
                                        <td>{{salary.working_day}}</td>
                                        <td>{{salary.overtime_hours}}</td>
                                        <td>{{salary.basic_salary| currency: "TK"}}</td>
                                        <td>{{salary.overtime_salary| currency: "TK"}}</td>
                                        <td>{{salary.house_rent| currency: "TK"}}</td>
                                        <td>{{salary.medical| currency: "TK"}}</td>
                                        <td>{{salary.transfort| currency: "TK"}}</td>
                                        <td>{{salary.fastival| currency: "TK"}}</td>
                                        <td>{{salary.total| currency: "TK"}}</td>
                                        <td>{{salary.pay_date| date : format : shortDate}}</td>
                                        <td><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModalEdit" ng-click="selectSalary(salary)">Edit</button></td>
                                        <td><button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModalDelete" ng-click="selectSalary(salary)">Delete</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer col-md-12">
                <div class="row">
                    &copy;SNA Management System.
                </div>
            </div>

            <!-- Modal Edit -->
            <div class="modal fade" id="myModalEdit" role="dialog">
                <div class="modal-dialog modal-lg">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Update Salary Info</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" action="">
                                <div class="well well-lg">
                                    <div class="well well-sm">
                                        <div>
                                            <h4 style="font-weight: bold; text-align: left; color: #009999;">Calculate Salary:</h4>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="id">Employee Id:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.emp_id" type="text" class="form-control" id="id" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="id">Transection Id:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.salary_id" type="text" class="form-control" id="id" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="month">Month & Year:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.month | date: 'MMMM yyyy'" type="text" class="form-control" id="month" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="working">Working Days:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.working_day" type="text" class="form-control" id="working" placeholder="Enter Workin Days Of Month">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="over_hour">Overtime Hours:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.overtime_hours" type="text" class="form-control" id="over_hour" placeholder="Enter Overtime Hours">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="basic">Basic Salary:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.basic_salary" type="text" class="form-control" id="basic" placeholder="Enter Basic Salary">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="fastival">Festival Allowance:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.fastival" type="text" class="form-control" id="fastival" placeholder="Enter Festival Allowance">
                                                </div>
                                            </div>
                                            <button ng-click="calculation(clickSalary)" type="button" class="btn btn-primary pull-right">Calculate</button>
                                        </div></br></br>
                                    </div>
                                    <div class="well well-lg">
                                        <div>
                                            <h4 style="font-weight: bold; text-align: left; color: #009999;">Salary Description:</h4>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="over_sal">Overtime Salary:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.overtime_salary" type="text" class="form-control" id="over_sal" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="house_rent">House Rent:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.house_rent" type="text" class="form-control" id="house_rent" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="medical">Medical Allowance:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.medical" type="text" class="form-control" id="medical" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="transfort">Transport Allowance:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.transfort" type="text" class="form-control" id="transfort" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="total">Total Salary:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.total" type="text" class="form-control" id="total" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="total">Pay Date:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="clickSalary.pay_date | date: 'dd MMM yyyy'" type="text" class="form-control" id="total" readonly>
                                                </div>
                                            </div>
                                            <button type="button" class="btn btn-default pull-right" data-dismiss="modal" style="margin-left: 5px;">Close</button>
                                            <button type="button" class="btn btn-primary pull-right" data-dismiss="modal" ng-click="updateSalary()">Update</button>
                                        </div></br>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>

                </div>
            </div>

            <!-- Modal Delete-->
            <div class="modal fade" id="myModalDelete" role="dialog">
                <div class="modal-dialog modal-sm">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Delete Salary Info</h4>
                        </div>
                        <div class="modal-body">
                            <p>Are You Sure Delete Transection ID <span style="color: #ac2925; font-weight: bold;">{{clickSalary.salary_id}}</span>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal" ng-click="deleteSalary()">Yes</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
