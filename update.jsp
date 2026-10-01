<%@ include file="db.jsp" %>
<%
    int id =Integer.parseInt(request.getParameter("id"));
    String name =request.getParameter("name");
    String email =request.getParameter("email");
    String subject =request.getParameter("subject");
    String message =request.getParameter("message");
    Connection con = getCon();
    PreparedStatement ps =con.prepareStatement("UPDATE complaints SET name=?,email=?,subject=?,message=? WHERE id=?");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,subject);
    ps.setString(4,message);
    ps.setInt(5,id);
    ps.executeUpdate();
    ps.close();
    con.close();
    session.setAttribute("msg","Complaint Updated Successfully");
    response.sendRedirect("view.jsp");
%>