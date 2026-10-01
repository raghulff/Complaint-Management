<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%
    int id =Integer.parseInt(request.getParameter("id"));
    String name="";
    String email="";
    String subject="";
    String message="";
    Connection con = getCon();
    PreparedStatement ps =con.prepareStatement("SELECT * FROM complaints WHERE id=?");
    ps.setInt(1,id);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    {
        name = rs.getString("name");
        email = rs.getString("email");
        subject = rs.getString("subject");
        message = rs.getString("message");
    }
%>
<html>
<head>
<title>Edit Complaint</title>
<link rel="stylesheet" href="style.css">
</head>
    <body>
        <div class="form-section">
            <h2>Edit Complaint</h2>
            <form action="update.jsp" method="post">
                <input type="hidden"name="id"value="<%= id %>">
                <div class="form-group">
                <label>Name</label>
                <input type="text"name="name"value="<%= name %>">
                </div>
                <div class="form-group">
                <label>Email</label>
                <input type="email"name="email"value="<%= email %>">
                </div>
                <div class="form-group">
                <label>Subject</label>
                <input type="text"name="subject"value="<%= subject %>">
                </div>
                <div class="form-group">
                <label>Message</label>
                <textarea name="message"><%= message %></textarea>
                </div>
                <button type="submit"class="submit-btn">Update Complaint</button>
            </form>
        </div>
    </body>
</html>