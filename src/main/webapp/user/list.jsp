<%--
  Created by IntelliJ IDEA.
  User: KhangVo
  Date: 3/31/2026
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>User Management</h1>
        <a href="/user?action=create" class="btn btn-primary">
            <i class="bi bi-plus-circle"></i> Add New User
        </a>
    </div>
    <div class="card mb-4">
        <div class="card-body">
            <form action="/user" method="get" class="row g-3 align-items-center">
                <input type="hidden" name="action" value="search">

                <div class="col-md-4">
                    <input type="text" name="country" class="form-control"
                           placeholder="Enter country" value="${country}">
                </div>

                <div class="col-auto">
                    <button type="submit" class="btn btn-success">
                        <i class="bi bi-search"></i> Search
                    </button>
                </div>

                <div class="col-auto">
                    <a href="/user?action=sort" class="btn btn-warning">
                        <i class="bi bi-sort-alpha-down"></i> Sort by name
                    </a>
                </div>

                <div class="col-auto">
                    <a href="/user" class="btn btn-secondary">
                        <i class="bi bi-arrow-clockwise"></i> Show all
                    </a>
                </div>
            </form>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <h4 class="mb-0">List of Users</h4>
        </div>
        <div class="card-body">
            <table class="table table-bordered table-hover align-middle">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th width="260">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td><c:out value="${user.id}"/></td>
                        <td><c:out value="${user.name}"/></td>
                        <td><c:out value="${user.email}"/></td>
                        <td><c:out value="${user.country}"/></td>
                        <td>
                            <a href="/user?action=view&id=${user.id}" class="btn btn-info btn-sm text-white">
                                <i class="bi bi-eye"></i> View
                            </a>
                            <a href="/user?action=edit&id=${user.id}" class="btn btn-warning btn-sm">
                                <i class="bi bi-pencil-square"></i> Edit
                            </a>
                            <a href="/user?action=delete&id=${user.id}" class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this user?');">
                                <i class="bi bi-trash"></i> Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>

                <c:if test="${empty listUser}">
                    <tr>
                        <td colspan="5" class="text-center text-muted">No users found.</td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
