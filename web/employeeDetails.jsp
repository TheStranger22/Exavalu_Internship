<%-- 
    Document   : landingPage
    Created on : 22-Dec-2022, 12:00:33 PM
    Author     : Avijit Chattopadhyay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/reset-min.css">
        <link rel="stylesheet" href="css/algolia-min.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/docs.min.css">
        <link rel="stylesheet" href="css/index.css">
        <title>Employee Management</title>
    </head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!<!-- I want to check my session before showing any content to the user -->




    <jsp:include page="menu.jsp"></jsp:include>

        <div class='table-responsive'>

            <table class="table table-bordered table-hover">
                <thead>
                    <tr class="table-striped table-primary">
                        <th scope="col">Employee Id</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Age</th>
                        <th scope="col">Department</th>
                        <th scope="col">Role</th>
                        <th scope="col">Basic Salary</th>
                        <th scope="col">Car Allowance</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${EmpList}" var="emp">
                        <tr>
                            <th scope="row">${emp.employeeId}</th>

                            <td>
                                ${emp.firstName}
                            </td>
                            <td>
                                ${emp.lastName}
                            </td>
                            <td>
                                ${emp.address}
                            </td>
                            <td>
                                ${emp.phone}
                            </td>
                            <td>
                                ${emp.gender}
                            </td>
                            <td>
                                ${emp.age}
                            </td>
                            <td>
                                ${emp.departmentName}
                            </td>
                            <td>
                                ${emp.roleName}
                            </td>
                            <td>
                                ${emp.basicSalary}
                            </td>
                            <td>
                                ${emp.carAllaowance}
                            </td>
                            <td> <a href=EditEmployee?employeeId=${emp.employeeId}>Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

</html>
