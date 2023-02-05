<%@page import="com.exavalu.models.Role"%>
<%@page import="com.exavalu.models.Employee"%>
<%@page import="com.exavalu.models.Employee"%>
<%@page import="com.exavalu.models.Department"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<!doctype html>
<html lang="en">
    <head>        
        <title>Employee Management Web Application</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/product/">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>
        <style>
            #example_wrapper{
                width: 100%;
                display: block;
                margin: auto;
            }
        </style>
    </head>
    <body class="text-center">
        <jsp:include page="menu.jsp"></jsp:include>
            <main class="form-signin w-100 m-auto">
                <div class="d-flex align-items-center justify-content-center mt-3">

                    <form action="Search" method="Post">
                        <table class="table table-borderless">
                            <tr>
                                <td>
                                    <div class="form-outline">
                                        <input type="text" id="form1" class="form-control" placeholder="first name" name="firstName"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="form-outline">
                                        <input type="text" id="form1" class="form-control" placeholder="last name" name="lastName"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="form-outline">
                                        <select name="gender"class="form-select">
                                            <option value="">select gender</option>
                                            <option value="male">male</option>
                                            <option value="female">female</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                            <c:set var="DeptList" value="${DepartmentService.getAllDepartment()}"/>
                        <div class="form-outline">

                            <select name="departmentId" class="form-select" id="departmetnId">
                                <option value="0" >select a department</option>

                                <c:forEach items="${DeptList}" var="dep">

                                    <option value="${dep.departmentId}">
                                        ${dep.departmentName}
                                    </option>

                                </c:forEach>

                            </select>

                        </div>

                        </td>
                        <td>
                            <select name="roleId" class="form-select" id="roleId">

                                <option value="0" >select a Role</option>

                                <c:forEach items="${RoleList}" var="role">
                                    <option value="${role.roleId}">
                                        ${role.roleName}
                                    </option>
                                </c:forEach>

                            </select>
                            </div>
                        </td>
                        <td>
                            <button type="submit" class="btn btn-outline-success">
                                search
                            </button>
                        </td>
                        </tr>
                    </table>
                </form>
            </div>
        </main>
    </body>
</html>
