<%--
  Created by IntelliJ IDEA.
  User: KhangVo
  Date: 4/1/2026
  Time: 7:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <div class="card mx-auto" style="max-width: 600px;">
        <div class="card-header bg-info text-white">
            <h3 class="mb-0"><i class="bi bi-person-vcard"></i> User Details</h3>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <td>${user.id}</td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td>${user.name}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${user.email}</td>
                </tr>
                <tr>
                    <th>Country</th>
                    <td>${user.country}</td>
                </tr>
            </table>

            <a href="/user" class="btn btn-secondary">
                <i class="bi bi-arrow-left"></i> Back
            </a>
        </div>
    </div>
</div>
</body>
</html>
