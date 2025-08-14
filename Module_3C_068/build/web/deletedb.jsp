<%-- 
    Document   : deletedb
    Created on : Aug 14, 2025, 11:56:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.io.*, java.util.*, java.sql.*"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" user="root" password="root" />

        <sql:update dataSource="S(db)" var="count">
            DELETE FROM student_details_068 WHERE id='${param.id}';
        </sql:update>
        <c:if test="${count>-1}">
        <font size="5" color='green'> Congratulations! Data deleted successfully </font>
        <a href="index.html">Go Home</a>
        </c:if>
</body>

</html>
