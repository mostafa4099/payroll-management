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
                                <li class="dropdown active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li class="active"><a href="addemployee.jsp">Add Employee</a></li>
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
                    <div class="panel panel-info">
                        <div class="panel-heading"><h4>Add Employee</h4></div>
                        <div class="panel-body">
                            <div class="alert alert-success alert-dismissible" ng-show="message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>Congratulation!</strong> {{message}}
                                <p>Your Employee Id: {{clickEmp.emp_id}}</p>
                                <p>User Name: {{clickEmp.emp_uname}}</p>
                                <p>Password: {{clickEmp.emp_pass}}</p>
                            </div>
                            <div class="alert alert-success alert-dismissible" ng-show="error_message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>{{error_message}}</strong>
                            </div>
                            <form class="form-horizontal" action="">
                                <div class="well well-lg">
                                    <div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="name">Name:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_name" type="text" class="form-control" id="name" placeholder="Enter Full Name">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="dep">Department:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_department" tameype="text" class="form-control" id="dep" placeholder="Enter Department Name">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="post">Post:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_post" type="text" class="form-control" id="post" placeholder="Enter Post">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="address">Address:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_address" type="text" class="form-control" id="address" placeholder="Enter Address">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="dob">Date Of Birth:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_dob" type="date" class="form-control" id="dob" placeholder="Enter Date Of Birth">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="mobile">Mobile:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_mobile" type="text" class="form-control" id="mobile" placeholder="Enter Mobile Number">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="email">Email:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_email" type="email" class="form-control" id="email" placeholder="Enter Email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="uname">User Name:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_uname" type="text" class="form-control" id="uname" placeholder="Enter User Name">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="pwd">Password:</label>
                                                <div class="col-sm-8">
                                                    <input ng-model="newEmployee.emp_pass" type="password" class="form-control" id="pwd" placeholder="Enter Password">
                                                </div>
                                            </div>
                                            <button type="reset" class="btn btn-primary pull-right" style="margin-right: 5px;">Clear</button>
                                            <button ng-click="saveEmployee()" type="button" class="btn btn-primary pull-right" style="margin-right: 8px;">Submit</button>
                                        </div>
                                    </div></br></br></br></br></br></br></br></br></br></br></br></br>
                                </div>
                            </form>
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
