<%-- 
    Document   : registration
    Created on : Jul 31, 2025, 12:25:29 PM
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
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String location = request.getParameter("location");
            
                
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                PreparedStatement pst = conn.prepareStatement("INSERT INTO User_068 VALUES(?, ?, ?, ?, ?)");
                
                pst.setString(1, username);
                pst.setString(2, password);
                pst.setString(3, email);
                pst.setString(4, mobile);
                pst.setString(5, location);
                
                int n = pst.executeUpdate();
                
                if(n == 1) {
                    out.println("Registeration Successful, You Can Proceed to Login");
        %>
        
        <jsp:include page="index.html"></jsp:include>
        <%
                } else {
                    out.println("Server Error Occured, Please Register Again");
        %>
        
        <jsp:include page="registration.html"></jsp:include>
        <%
                }
            }catch(Exception e) {
                out.println("Exception Occured: " + e);
            }
            
            
        %>
    </body>
</html>
