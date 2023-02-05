<%@page import="com.exavalu.models.Employee"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%if (request.getSession().getAttribute("User") == null)
        request.getRequestDispatcher("login.jsp").forward(request, response);
%>

<!doctype html>
<html lang="en">
    <head>        
        <title>Employee Management Web Application</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/product/">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">
    </head>
    <body>

        <jsp:include page="search.jsp"></jsp:include>

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
                                ${emp.carAllowance}
                            </td>
                            <td> <a href=EditEmployee?employeeId=${emp.employeeId}>Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
</html>
