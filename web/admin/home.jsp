<%-- 
    Document   : index
    Created on : Apr 25, 2018, 10:38:13 AM
    Author     : Mostafa-R34
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body>
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
                                <li class="active"><a href="home.jsp">Home</a></li>
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
                        <div class="panel-heading"><h1>Lorem Ipsum</h1></div>
                        <div class="panel-body">
                            <h3>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, velit..."</h3>
                            <h6>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."</h6>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ornare pretium nisl vel venenatis. Etiam eget rutrum justo. Aliquam laoreet lacinia ex id viverra. Praesent erat felis, aliquet quis molestie non, fermentum quis ante. Mauris mollis nisl risus, vitae fringilla lacus fermentum a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque diam hendrerit tellus tempus viverra.</p>

                            <p>Suspendisse efficitur leo ipsum, quis luctus lorem tincidunt quis. Donec finibus risus vitae laoreet placerat. In venenatis urna elit, vel mattis nulla lobortis vitae. Donec eget erat nec arcu euismod venenatis sit amet vel mi. Nulla ante quam, facilisis ut scelerisque a, sagittis sed augue. Aliquam lobortis magna leo, vitae ornare tellus auctor sed. Integer dignissim sem non porta dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Suspendisse non purus sit amet ex tristique tempus. Nullam finibus lacus vel ipsum tincidunt, quis venenatis risus scelerisque. Vivamus vitae hendrerit nulla.</p>

                            <p>Aenean et convallis nulla. Curabitur eleifend a mauris quis tempus. Morbi a dolor rhoncus est efficitur ornare in vel augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Maecenas nec lacinia odio. Vestibulum arcu erat, feugiat quis condimentum vitae, pulvinar id diam.</p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="footer col-md-12">
                <div class="row">
                    &copy;SNA Management System.
                </div>
            </div>
        </div>
    </body>
</html>
