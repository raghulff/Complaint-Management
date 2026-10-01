<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<%
    String msg = (String) session.getAttribute("msg");

    if (msg != null)
    {
        session.removeAttribute("msg");
    }
%>

<html>
<head>
    <title>View Complaints</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <div class="navbar">
        <div class="brand">Complaint System</div>

        <div class="nav-links">
            <a href="index.html">Home</a>
            <a href="add.jsp">Add Complaint</a>
            <a href="view.jsp">View Complaints</a>
        </div>
    </div>

    <div class="table-section">

        <h2>All Complaints</h2>

        <%
            if (msg != null)
            {
        %>
                <div class="message message-success">
                    <%= msg %>
                </div>
        <%
            }
        %>

        <table>

            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>

            <%
                Connection con = getCon();

                try
                {
                    Statement st = con.createStatement();

                    ResultSet rs = st.executeQuery(
                        "SELECT * FROM complaints"
                    );

                    while (rs.next())
                    {
            %>

                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("email") %></td>
                            <td><%= rs.getString("subject") %></td>
                            <td><%= rs.getString("message") %></td>

                            <td>
                                <a class="btn-edit"
                                   href="edit.jsp?id=<%= rs.getInt("id") %>">
                                    Edit
                                </a>

                                <a class="btn-delete"
                                   href="delete.jsp?id=<%= rs.getInt("id") %>">
                                    Delete
                                </a>
                            </td>
                        </tr>

            <%
                    }

                    rs.close();
                    st.close();
                    con.close();
                }
                catch (Exception e)
                {
                    out.println(e);
                }
            %>

        </table>

        <br>

        <a href="add.jsp" class="btn-back">
            Add New Complaint
        </a>

    </div>

</body>
</html>