

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List" %>
<%@page import="model.Product" %>
<%@page import="model.Products" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="layout.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Index</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="container" class="clear">
            <div id="content">
      
    </div>
            <h1>Sim đang bán</h1>
        <div id="tbl">
            <table border="5">
            <tr>
                <td>Mã SP</td>
                <td>Tên Sp</td>
                <td>Giá</td>
            </tr>
            <%
                Products listSP = new Products();
                List<Product> list = listSP.showProduct("");
                request.setAttribute("abc", list);
                for(Product sp:list){
                    out.print("<form action=\"ControllerCartBean\">");
                    out.print("<tr><td>"+sp.getCode()+"</td><td>"+sp.getName()+"</td>" + 
                            "<td>" + sp.getPrice()+"</td><td><input type=\"submit\" "
                            + "value=\"Add to Cart\" name=\"action\" id=\"submit\"/></td>"
                                + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice() +
                                "'></tr>");
                            
                            out.print("</form>");
                            
                }
            %>   
                             <aside id="right_column">
      <h2 class="title">Categories</h2>
      <nav>
        <ul>
          <li><a href="#">Sim ngày sinh</a></li>
          <li><a href="#">Sim Thần Tài</a></li>
          <li><a href="#">Sim Phong Thuy</a></li>
          <li><a href="#">Sim ngày lễ</a></li>
          <li><a href="#">Sim thích gì đặt đó</a></li>
          <li><a href="#">Sim rẻ tiền</a></li>
          <li><a href="#">Sim đắt tiền</a></li>
          <li><a href="#">Sim số xe</a></li>
          <li><a href="#">Sim khuyến mãi</a></li>
          <li class="last"><a href="#">Sim hết hạn</a></li>
        </ul>
      </nav>

    </aside>
        </table>
        <form action="ControllerCartBean">
            <input type="submit" value="View Cart" name="action" id="sbvc"/>
        </form>
        

        
        </div>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>
