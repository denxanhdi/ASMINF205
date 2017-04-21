<%-- 
    Document   : login
    Created on : Sep 29, 2016, 11:43:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="style.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
         <div id="container" class="clear">
        
        <form action="ControllerCustomers">
            <header><h1>Login</h1></header>
            <div id="login">
                <label> Username:<input size="20" type="text" name="txtUser" value=""/><br/><span>*</span></label>
                <div class="help">At least 3 character</div>
                <label>Password: <input size="20" type="password" name="txtPass" value=""/><br/><span>*</span></label>
                <div class="help">Use upper and lowercase lettes as well</div>
                <div class="button"><input type="submit" name="action" value="Login"/></div>
                 <div class="button"><input type="reset" name="Reset" value="Reset"/></div>
            </div>
        </form>
         </div>
    </body>
    
    <jsp:include page="footer.jsp"></jsp:include>
</html>