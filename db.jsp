<%@ page import="java.sql.*" %>

<%!

public static Connection getCon()
{
    Connection con = null;

    try
    {
        Class.forName("com.mysql.jdbc.Driver");

        con = DriverManager.getConnection(
            "jdbc:mysql://sql113.infinityfree.com:3306/if0_43078536_complaint",
            "if0_43078536",
            "YOUR_PASSWORD"
        );
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

    return con;
}

%>