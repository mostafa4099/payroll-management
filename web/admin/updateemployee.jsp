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
                                        <li><a href="addemployee.jsp">Add Employee</a></li>
                                        <li class="active"><a href="updateemployee.jsp">Update Employee Info</a></li>
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
                        <div class="panel-heading"><h3>Update Employee Info</h3></div>
                        <div class="panel-body">
                            </br>
                            <div class="alert alert-success alert-dismissible" ng-show="message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>Congratulation!</strong> {{message}}
                            </div>
                            <div class="alert alert-success alert-dismissible" ng-show="error_message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>{{error_message}}</strong>
                            </div>
                            </br>
                            <form class="form-horizontal" action="">
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
                            </form>

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
                                <h4 class="modal-title">Update Employee Info</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" action="">
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="name">Name:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="name" placeholder="Enter Full Name" ng-model="clickEmp.emp_name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="dep">Department:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="dep" placeholder="Enter Department Name" ng-model="clickEmp.emp_department">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="post">Post:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="post" placeholder="Enter Post" ng-model="clickEmp.emp_post">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="address">Address:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="address" placeholder="Enter Address" ng-model="clickEmp.emp_address">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="dob">Date Of Birth:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="dob" placeholder="Enter Date Of Birth" ng-model="clickEmp.emp_dob">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="mobile">Mobile:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="mobile" placeholder="Enter Mobile Number" ng-model="clickEmp.emp_mobile">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="email">Email:</label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="email" placeholder="Enter Email" ng-model="clickEmp.emp_email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="uname">User Name:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="uname" placeholder="Enter User Name" ng-model="clickEmp.emp_uname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3" for="pwd">Password:</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="pwd" placeholder="Enter Password" ng-model="clickEmp.emp_pass">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal" ng-click="updateEmployee()">Update</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
