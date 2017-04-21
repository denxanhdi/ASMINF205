<%-- 
    Document   : newProduct
    Created on : Oct 14, 2016, 10:40:51 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="layout.css" rel="stylesheet" type="text/css"/>
<link href="style.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Product</title>
    </head>
    <body>

    <jsp:include page="header.jsp"></jsp:include>
 <div id="container" class="clear">

        <form action="ControllerProducts">
                 <header>New product</header>
        <div id="login">
            <label>Code: <input type="text" name="txtCode" value=""/></label>
            <label>Name:<input type="text" name="txtName" value=""/></label>
            <label>Price:<input type="text" name="txtPrice" value=""/></label>
            <div id="insert" style="width: 234px;margin-left: 299px; margin-top: 34px;">
                <input type ="submit" name="action" value="Insert" id="submit"/></div>
            
        </div>
        </form>
 </div>
    </body>
        <jsp:include page="footer.jsp"></jsp:include>
</html>
