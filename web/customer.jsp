<%-- 
    Document   : customer
    Created on : Sep 29, 2016, 11:40:13 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
    </head>
    <body>
        
        <h1>Welcome, ${sessionScope.USER}</h1>  
        <jsp:include page="products.jsp"></jsp:include>
    </body>
</html>
