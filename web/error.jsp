<%-- 
    Document   : error
    Created on : Sep 29, 2016, 11:43:11 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="layout.css" rel="stylesheet" type="text/css"/>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <div id="container" class="clear">
        <h1>Username or password invalid!</h1>
        <a href="login.jsp" id="a"> Back to Login</a>
        </div>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
