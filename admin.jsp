<%@ page language="java" contentType="text/html;charset=UTF-8" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

boolean validLogin =
        "raghul".equals(username) &&
        "raghulff22".equals(password);

if ("POST".equalsIgnoreCase(request.getMethod()) && validLogin) {
    response.sendRedirect("view.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="form-section">

    <h2>Admin Login</h2>

    <%
    if ("POST".equalsIgnoreCase(request.getMethod()) && !validLogin) {
    %>

        <div class="message message-error">
            Invalid Username or Password
        </div>

    <%
    }
    %>

    <form method="post">

        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit" class="submit-btn">
            Login
        </button>

    </form>

</div>

</body>
</html>