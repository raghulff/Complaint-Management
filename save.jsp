<%@ include file="db.jsp" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
    Connection con = getCon();
    if(con != null)
        {
            try
            {
                PreparedStatement ps =con.prepareStatement("INSERT INTO complaints(name,email,subject,message) VALUES(?,?,?,?)");
                ps.setString(1,name);
                ps.setString(2,email);
                ps.setString(3,subject);
                ps.setString(4,message);
                ps.executeUpdate();
                ps.close();
                con.close();
                session.setAttribute("msg","Complaint Added Successfully");
            }
            catch(Exception e)
            {
                session.setAttribute("msg",e.toString());
            }
        }
    else
        {
            session.setAttribute("msg","Database Connection Failed");
        }
    response.sendRedirect("view.jsp");
%>