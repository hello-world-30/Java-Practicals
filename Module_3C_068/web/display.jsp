<%-- 
    Document   : display
    Created on : Aug 14, 2025, 11:56:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.io.*, java.util.*, java.sql.*"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function confirmGo(m, u) {
                if(confirm(m)) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <body>
        <h1>Student Details</h1>
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" user="root" password="root" />
        <sql:query dataSource="${db}" var = "result">
            SELECT id,name,marks FROM student_details_068 ORDER BY id;
        </sql:query>
        <center>
            <form>
                <table border = "2" cellpadding = "8">
                    <tr>
                        <th>SAP ID</th>
                        <th>Student Name</th>
                        <th>Marks</th>
                        <th colspan="2">Action</th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td><c:out value="${row.id}"/></td>
                            <td><c:out value="${row.name}"/></td>
                            <td><c:out value="${row.marks}"/></td>
                            <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
                            <td><a href="javascript:confirmGo('Sure to delete this record?', 'deletedb.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </form>
            
        </center>
    </body>
</html>
