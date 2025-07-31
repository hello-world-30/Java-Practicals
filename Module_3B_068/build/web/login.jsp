<%-- 
    Document   : login
    Created on : Jul 31, 2025, 1:06:52 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            


             try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                PreparedStatement pst = conn.prepareStatement("SELECT * FROM User_068 WHERE username = ? AND password = ?");
                
                pst.setString(1, username);
                pst.setString(2, password);
                
                ResultSet rs = pst.executeQuery();
                
                if(rs.next()) {
                    out.println("Login Successful!");
                } else {
                    out.println("Invalid Credentials!");
                }
             }
             catch(Exception e) {
                 out.println("Exception Occured: " + e);
             }
        %>
    </body>
</html>
