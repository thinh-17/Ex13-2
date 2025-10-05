<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management - Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <div class="container">
        <header>
            <h1>User Management System</h1>
            <p class="subtitle">Manage and organize your users efficiently</p>
        </header>

        <div class="card">
            <div class="card-header">
                <h2>All Users</h2>
                <a href="userAdmin" class="btn btn-secondary">
                    Refresh
                </a>
            </div>

            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email Address</th>
                            <th class="actions-col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${users}">
                        <tr>
                            <td><strong>${user.firstName}</strong></td>
                            <td><strong>${user.lastName}</strong></td>
                            <td class="email-col">${user.email}</td>
                            <td class="actions-col">
                                <a href="userAdmin?action=display_user&amp;email=${user.email}" class="btn btn-small btn-primary">
                                    Edit
                                </a>
                                <a href="userAdmin?action=delete_user&amp;email=${user.email}"
                                   class="btn btn-small btn-danger"
                                   onclick="return confirm('Are you sure you want to delete ${user.firstName} ${user.lastName}?');">
                                    Delete
                                </a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>