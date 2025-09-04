<%-- 
    Document   : updatedb
    Created on : Aug 14, 2025, 11:56:06 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            url="jdbc:mysql://localhost:3306/test"
            user="root"
            password="root"/>
       
        <sql:update dataSource="${dbSource}" var = "count">
            UPDATE student_details_068 SET name = ? , marks = ? WHERE id = "${param.id}";
            <sql:param value="${param.name}"/>
            <sql:param value="${param.marks}"/>
        </sql:update>
        
            <c:if test="${count >= 1}">
                <font size ='5' color ="green">Congratulations! Data Updated Successfully</font>
            </c:if>
            <c:if test="${count == 0}">
                <font size ='5' color ="red">No Record Updated</font>
            </c:if>

    </body>
</html>
