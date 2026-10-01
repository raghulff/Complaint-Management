<%@ include file="db.jsp" %>
<%
    int id =Integer.parseInt(request.getParameter("id"));
    Connection con = getCon();
    PreparedStatement ps =con.prepareStatement("DELETE FROM complaints WHERE id=?");
    ps.setInt(1,id);
    ps.executeUpdate();
    ps.close();
    con.close();
    session.setAttribute("msg","Complaint Deleted Successfully");
    response.sendRedirect("view.jsp");
%>