var myApp = angular.module('myApp', []);

myApp.controller('myCtrl', function ($scope, $http) {

//                                Global Section

    $scope.message = "";
    $scope.error_message = "";


//    clear message
    $scope.closeMessage = function () {
        $scope.message = "";
        $scope.error_message = "";
    };


//                                    Employee Section

    $scope.clickEmp = {};

//    Get All Employee
    $scope.getAllEmp = function () {
        $http({
            method: "GET",
            url: "http://localhost:8080/payroll/restful/employee"
        }).then(
                function (response) {
                    $scope.employees = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllEmp();

//    Save Employees
    $scope.newEmployee = {};
    $scope.saveEmployee = function () {
        $http({
            method: "POST",
            url: "http://localhost:8080/payroll/restful/employee",
            data: angular.toJson($scope.newEmployee),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Employee Added Successfully!";
                    $scope.getEmpId($scope.newEmployee.emp_name, $scope.newEmployee.emp_email, $scope.newEmployee.emp_mobile);
                },
                function (reason) {
                    $scope.error_message = "No Employee Added! Please Check Given Data Carefully.";
                }
        );
    };

    //Get A Employee Id
    $scope.getEmpId = function (name, email, mobile) {
        $http({
            method: "GET",
            url: "http://localhost:8080/payroll/restful/employee/" + name + "/" + email + "/" + mobile
        }).then(
                function (response) {
                    $scope.clickEmp = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Get A Employee
    $scope.getEmp = function (emp_id) {
        $http({
            method: "GET",
            url: "http://localhost:8080/payroll/restful/employee/" + emp_id
        }).then(
                function (response) {
                    if (response.data == "") {
                        $scope.error_message = "Employee Not Found! Please Add Employee First.";
                    } else {
                        $scope.clickEmp = response.data;
                    }
                },
                function (reason) {
                    $scope.error_message = "Something Went Wrong.";
                }
        );
    };

    //Select Employee
    $scope.selectEmp = function (employee) {
        $scope.clickEmp = employee;
    };

    //    Update Employees
    $scope.updateEmployee = function () {
        $http({
            method: "PUT",
            url: "http://localhost:8080/payroll/restful/employee",
            data: angular.toJson($scope.clickEmp),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Update Employee Successfull!";
                    $scope.getAllEmp();
                },
                function (reason) {
                    $scope.error_message = "Something Went Wrong! Please Check Given Data Carefully.";
                }
        );
    };

    //    Delete Employees
    $scope.deleteEmployee = function () {
        $http({
            method: "DELETE",
            url: "http://localhost:8080/payroll/restful/employee/" + $scope.clickEmp.emp_id
        }).then(
                function (response) {
                    $scope.message = "Delete Employee Successfull!";
                    $scope.getAllEmp();
                },
                function (reason) {
                    $scope.error_message = "Unsuccessfull! Something Went Wrong.";
                }
        );
    };


//                                      Salary Section

    $scope.clickSalary = {};

//    Get All Salary
    $scope.getAllSalary = function () {
        $http({
            method: "GET",
            url: "http://localhost:8080/payroll/restful/salary"
        }).then(
                function (response) {
                    $scope.salaries = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllSalary();

//    Save Salary
    $scope.newSalary = {};
    $scope.saveSalary = function (emp_id) {
        $scope.newSalary.emp_id = emp_id;
        $http({
            method: "POST",
            url: "http://localhost:8080/payroll/restful/salary/",
            data: angular.toJson($scope.newSalary),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Payment Successfully!";
                },
                function (reason) {
                    $scope.error_message = "Incomplete Payment! Please Check Given Data Carefully.";
                }
        );
    };

    //Get Salary By Id
    $scope.getSalaryById = function (emp_id) {
        $http({
            method: "GET",
            url: "http://localhost:8080/payroll/restful/salary/" + emp_id
        }).then(
                function (response) {
                    $scope.clickSalary = response.data;
                },
                function (reason) {
                    $scope.error_message = "No Data Found!.";
                    ;
                }
        );
    };

    //Get Salary By Id and Date
    $scope.getSalaryBySalID = function (emp_id, salary_id) {
        $http({
            method: "GET",
            url: "http://localhost:8080/payroll/restful/salary/" + emp_id + "/" + salary_id
        }).then(
                function (response) {
                    $scope.clickSalary = response.data;
                },
                function (reason) {
                    $scope.error_message = "No Data Found!.";
                    ;
                }
        );
    };

    //Select Salary
    $scope.selectSalary = function (salary) {
        $scope.clickSalary = salary;
    };

    //    Update Employees
    $scope.updateSalary = function () {
        $http({
            method: "PUT",
            url: "http://localhost:8080/payroll/restful/salary",
            data: angular.toJson($scope.clickSalary),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Payment Update Successfull!";
                    $scope.getAllSalary();
                },
                function (reason) {
                    $scope.error_message = "Something Went Wrong! Please Check Given Data Carefully.";
                }
        );
    };

    //    Delete Salary Info
    $scope.deleteSalary = function () {
        $http({
            method: "DELETE",
            url: "http://localhost:8080/payroll/restful/salary/" + $scope.clickSalary.emp_id + "/" + $scope.clickSalary.salary_id
        }).then(
                function (response) {
                    $scope.message = "Delete Salary Info Successfull!";
                    $scope.getAllSalary()();
                },
                function (reason) {
                    $scope.error_message = "Unsuccessfull! Something Went Wrong.";
                }
        );
    };

//    Calculation
    $scope.calculation = function () {
        $scope.newSalary.overtime_salary = parseFloat(((($scope.newSalary.basic_salary * 1.25) / $scope.newSalary.working_day) / 8) * $scope.newSalary.overtime_hours);
        $scope.newSalary.house_rent = parseFloat($scope.newSalary.basic_salary * .20);
        $scope.newSalary.medical = parseFloat($scope.newSalary.basic_salary * .15);
        $scope.newSalary.transfort = parseFloat($scope.newSalary.basic_salary * .05);
        if (!$scope.newSalary.fastival) {
            $scope.newSalary.fastival = 0.00;
        }
        $scope.newSalary.total = (parseFloat($scope.newSalary.basic_salary) + $scope.newSalary.overtime_salary + $scope.newSalary.house_rent + $scope.newSalary.medical + $scope.newSalary.transfort + parseFloat($scope.newSalary.fastival));



        $scope.clickSalary.overtime_salary = parseFloat(((($scope.clickSalary.basic_salary * 1.25) / $scope.clickSalary.working_day) / 8) * $scope.clickSalary.overtime_hours);
        $scope.clickSalary.house_rent = parseFloat($scope.clickSalary.basic_salary * .20);
        $scope.clickSalary.medical = parseFloat($scope.clickSalary.basic_salary * .15);
        $scope.clickSalary.transfort = parseFloat($scope.clickSalary.basic_salary * .05);
        if (!$scope.clickSalary.fastival) {
            $scope.clickSalary.fastival = 0.00;
        }
        $scope.clickSalary.total = (parseFloat($scope.clickSalary.basic_salary) + $scope.clickSalary.overtime_salary + $scope.clickSalary.house_rent + $scope.clickSalary.medical + $scope.clickSalary.transfort + parseFloat($scope.clickSalary.fastival));
    };
});


