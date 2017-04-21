<%-- 
    Document   : products
    Created on : Sep 29, 2016, 11:46:38 PM
    Author     : admin
--%>
<link href="layout.css" rel="stylesheet" type="text/css"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        <div id="container" class="clear">
            <h1>Welcome, ${sessionScope.USER}<input type="submit" name="action" value="Logout" class="delete"/></h1>
            
        <h1>Products</h1>
        <form action="ControllerProducts">
            Nhap ten SP: <input type="text" name="txtTenSP" value=""/>
            <input type="submit" name="action" value="Search" id="submit"/>
            <input type="submit" name="action" value="New" id="submit"/>
        </form>
        <table border="1">
            <tr>
                <td> Code</td>
                <td> Name</td>
                <td> Price</td>
                <td> Edit</td>
                <td> Delete</td>
            </tr>
            <c:forEach var="rows" items="${listSP}">
                <form action="ControllerProducts">
                <tr>
                    <td>${rows.code}</td>
                    <td>${rows.name}</td>
                    <td>${rows.price}</td>
                    <c:url var="del" value="ControllerProducts">
                        <c:param name="action" value="Edit" />
                        <c:param name="txtCode" value="${rows.code}"/>
                        <c:param name="txtName" value="${rows.name}"/>
                        <c:param name="txtPrice" value="${rows.price}"/>
                   </c:url>
                    <td><a href="${del}" id="a">Edit</a></td>
                    <td>
                        <input type="hidden" name="txtCode" value="${rows.code}"/>    
                        <input type="submit" name="action" value="Delete" class="delete"/> 
                    </td>
                </tr>
                </form>
            </c:forEach>  
        </table>

        </div>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
