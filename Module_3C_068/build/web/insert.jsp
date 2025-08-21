<%-- 
    Document   : insert
    Created on : Aug 14, 2025, 11:54:53 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter User Details</h1>
        
        <form action="insertdb.jsp">
            <div>
                <label for="id">
                Enter ID
            </label>
            <input type = "text" name = "id" id="id"/>

            </div>
            
            <br/>
            <div>
                <label for="name">
                Enter Name
            </label>
            <input type = "text" name = "name" id="name"/>

            </div>
            
            <br/>
            <div>
                <label for="marks">
                Enter Marks
            </label>
            <input type = "text" name = "marks" id="marks"/>

            </div>
            
            <br/>
            <div>
                <button type="submit">Enter</button>
            </div>
        </form>
        
        <font color = "red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
            <a href="index.html">Go Back</a>
        </c:if>
        </font>
        
        <font color = "green">
        <c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}"/>
            <a href="index.html">Go Back</a>
        </c:if>
        </font>
    </body>
</html>
