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
                                        <li><a href="updateemployee.jsp">Update Employee Info</a></li>
                                        <li class="active"><a href="deleteemployee.jsp">Remove Employee</a></li>
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
                        <div class="panel-heading"><h3>Remove Employee</h3></div>
                        <div class="panel-body">

                            </br>
                            <div class="alert alert-success alert-dismissible" ng-show="message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>{{message}}</strong>
                            </div>
                            <div class="alert alert-success alert-dismissible" ng-show="error_message">
                                <a href="#" class="close" ng-click="closeMessage()">&times;</a>
                                <strong>{{error_message}}</strong>
                            </div>
                            </br>
                            <form class="form-horizontal" action="">
                                <div>
                                    <div class="well well-sm">
                                        <h4 style="font-weight: bold; text-align: left; color: #009999;">Remove Employee:</h4>
                                        <div class="form-group">
                                            <label class="control-label col-md-4" for="id">Employee ID:</label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="id" placeholder="Enter Employee ID" ng-model="emp_id">
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#myModal" ng-click="getEmp(emp_id)">Remove</button>
                                        </br>
                                        </br>
                                    </div>
                                </div>
                            </form>
                            </br>
                            </br>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Remove Employee</h4>
                        </div>
                        <div class="modal-body">
                            <p>Are You Sure Remove <strong style="color: #c7254e">{{clickEmp.emp_name}}</strong>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal" ng-click="deleteEmployee()">Yes</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
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
