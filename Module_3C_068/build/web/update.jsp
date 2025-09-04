<%-- 
    Document   : update
    Created on : Aug 14, 2025, 11:55:54 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import = "java.io.*, java.util.*, java.sql.*" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource 
            var="dbSource"
            driver="com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost:3306/test"
            user="root"
            password="root"
        />
        
        <sql:query
            dataSource="${dbSource}"
            var = "result">
            
            SELECT * FROM student_details_068 WHERE id = ?; <sql:param value = "${param.id}"/>
        </sql:query>
            
            <form action="updatedb.jsp" method="post">
                <table border = "2" width = "40%">
                    <caption>Update Student Details</caption>
                    <tr>
                        <th>Student Name</th>
                        <th>Student Marks</th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td>
                                <input type ='hidden' value="${param.id}" name = "id"/>
                            
                                <input type ='text' value="${row.name}" name = "name"/>
                            </td>
                            <td>
                                <input type ='text' value="${row.marks}" name = "marks"/>
                            
                                <input type ='submit' value="Update"/>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <a href="index.html">Go Home</a>
            </form>
    </body>
</html>
