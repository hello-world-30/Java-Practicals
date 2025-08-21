<%-- 
    Document   : insertdb
    Created on : Aug 14, 2025, 11:55:43 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty param.id or empty param.name or empty param.marks}">
            <c:redirect url = "insert.jsp">
                <c:param name="errMsg" value="Please Enter Student Details"/>
            </c:redirect>
        </c:if>
        
        
        <sql:setDataSource var = "db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
        
        <sql:update dataSource="${db}" var = "result" >
            INSERT INTO student_details_068 VALUES(?,?,?);
            
            <sql:param value = "${param.id}"/>
            <sql:param value = "${param.name}"/>
            <sql:param value = "${param.marks}"/>
        </sql:update>
        <font size="5" color='green'> Congratulations! Data deleted successfully </font>
        <a href="index.html">Go Home</a>
    </body>
</html>
