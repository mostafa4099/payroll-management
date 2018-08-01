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
        <link href="resource/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="resource/js/jquery.min.js" type="text/javascript"></script>
        <script src="resource/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resource/js/angular.min.js" type="text/javascript"></script>
        <script src="resource/js/app.js" type="text/javascript"></script>
        <link href="resource/css/main.css" rel="stylesheet" type="text/css"/>
        <title>Pay Roll Management</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="header col-md-12">
                    <div class="row">
                        <img class="img-responsive" src="resource/images/WebHR_Payroll1.jpg" alt="Chania" id="header"/>
                    </div>
                </div>
            </div>


            <div class="menu col-md-12">
                <div class="row">
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <a class="navbar-brand" href="./index.jsp">SNA Group</a>
                            </div>
                            <ul class="nav navbar-nav">
                                <li><a href="./index.jsp">Home</a></li>
                                <li><a href="./about.jsp">About Us</a></li>
                                <li><a href="./contact.jsp">Contact</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active"><a href="./login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>

            <div class="content_area col-md-12">
                <div class="content col-md-8">
                    <div class="row">
                        <div class="panel panel-info">
                            <div class="panel-heading"><h1>Login</h1></div>
                            <div class="panel-body">
                                <form action="">
                                    <div class="form-group">
                                        <label for="uname">User Name:</label>
                                        <input type="text" class="form-control" id="uname" placeholder="User Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Password:</label>
                                        <input type="password" class="form-control" id="pwd" placeholder="Password">
                                    </div>
                                    <div class="checkbox">
                                        <label><input type="checkbox"> Remember me</label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form> 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="left col-md-4">
                    <div class="row">
                        <p>Quick Link</p>
                        <a href="#">Forms and Downloads</a><br/>
                        <a href="#">Schedule of Charges</a><br/>
                        <a href="#">Employee History</a><br/>
                        <a href="#">SNA Corporation</a><br/>
                        <a href="#">SNA Products</a><br/>
                        <a href="#">SNA Group Details</a>
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
