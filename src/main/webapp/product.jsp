<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="com.book.control.CartController"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   
    .nr{
    	height:400px;
    	width:100%;
    	text-align: center;
    }
    .tab{
       border-collapse:collapse;
       width:800px;
       
    }
	.t_bg{background-color:#8A2BE2} 
	.t_right_bg{background-color:#FFF0F5}
	
	a:link{
		text-decoration:none;
	}
	
	a:visited{
		text-decoration:none;
	}
	
	a:active{
		text-decoration:none;
	}
	
	a:hover{
		text-decoration:none;
	}
	
</style>
</head>
<body>

 <jsp:include page="title.jsp"></jsp:include>
 <div  class="nr" >
<table  align="center" class="tab" border="2";>
	<tr height="20px">
		<th width="100px">商品编号</th>
		<th>商品名称</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach items="${requestScope.books}" var="cur_book">
	  <tr height="20px">
		<td width="100px">${cur_book.prodid}</td>
		<td>${cur_book.prodname}</td>
		<td> <a href="cart?cmd=add2Cart&productid=${cur_book.prodid}">加入购物车</a> </td>
	  </tr>
	</c:forEach>
<!-- 空白行 删除了 -->
</table>
<a href="cart?cmd=show2Cart">show Cart</a> <br/>
<a href="cart.jsp">show Cart</a>
</div>
<!-- 内容end -->
 <jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>