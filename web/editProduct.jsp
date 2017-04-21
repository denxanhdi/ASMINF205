<%-- 
    Document   : editProduct
    Created on : Sep 30, 2016, 12:29:55 AM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="layout.css" rel="stylesheet" type="text/css"/>
<link href="style.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%-- <jsp:include page="_menu.jsp"></jsp:include> --%>
        <div id="container" class="clear">
             
                 
             <form action="ControllerProducts">        
                 <header>Edit</header>
        <div id="login">
            <label><h1> Code:${SP.code}</h1></label><br/>
            <input  type="hidden" name="txtCode" value="${SP.code}"/>
            <label> Name: <input type="text" name="txtName" value="${SP.name}"/></label><br/>
            <label> Price: <input type="text" name="txtPrice" value="${SP.price}"/></lable><br/>
            <input type="submit" name="action" value="Update" id="submit"/>
        </div>
        </form>
        </div>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
