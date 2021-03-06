<%-- 
    Document   : showcart
    Created on : Oct 17, 2016, 11:07:22 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
        <div id="container" class="clear">
        <h1>Your Shopping Cart</h1>
        <c:set var ="shop" value="${sessionScope.SHOP}" />
        <c:if test="${not empty shop}">
            <table border ="1">
                <thead>
                    <tr>
                        <td>No.</td>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                    <form action="ControllerCartBean">
                        <c:set var ="count" value="0"/>
                        <c:forEach var ="rows" items ="${shop}">
                            <c:set var ="count" value ="${count +1}" />
                            <tr>
                                <td>${count}</td>
                                <td>${rows.value.sanpham.code}</td>
                                <td>${rows.value.sanpham.name}</td>
                                <td>${rows.value.sanpham.price}</td>
                                <td>${rows.value.quantity}</td>
                                <td><input type = "checkbox" name="rmv" 
                                           value ="${rows.value.sanpham.code}" id="md-checkbox" /></td>
                            </tr>
                        </c:forEach>
                            <tr>
                                <c:url var ="add" value ="ControllerCartBean">
                                    <c:param name="action" value="AddMore" />
                                </c:url>
                                <td colspan ="2"> 
                                    <a href="index.jsp" id="a"> Add more </a> 
                                </td>
                                <td> 
                                    <input type ="submit" value="Remove" name= "action" class="delete"/> 
                                </td>
                            </tr>
                </form>
                </tbody>
        </c:if>
                        <jsp:include page="footer.jsp"></jsp:include>   
        </div>

        </body>
             
</html>
