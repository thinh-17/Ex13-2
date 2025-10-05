<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User - Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <div class="container">
        <header>
            <h1>Update User Information</h1>
            <p class="subtitle">Modify user details below</p>
        </header>

        <div class="card">
            <div class="alert alert-info">
                <span><strong>Important:</strong> Email address cannot be modified for security reasons</span>
            </div>

            <form action="userAdmin" method="post" class="form">
                <input type="hidden" name="action" value="update_user">

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email"
                           id="email"
                           name="email"
                           value="${user.email}"
                           readonly
                           class="readonly">
                    <span class="field-note">This field is read-only and cannot be changed</span>
                </div>

                <div class="form-group">
                    <label for="firstName">First Name <span class="required">*</span></label>
                    <input type="text"
                           id="firstName"
                           name="firstName"
                           value="${user.firstName}"
                           required
                           placeholder="Enter first name"
                           autocomplete="given-name">
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name <span class="required">*</span></label>
                    <input type="text"
                           id="lastName"
                           name="lastName"
                           value="${user.lastName}"
                           required
                           placeholder="Enter last name"
                           autocomplete="family-name">
                </div>

                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">
                        Save Changes
                    </button>
                    <a href="userAdmin" class="btn btn-secondary">
                        ← Back to List
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>