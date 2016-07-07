<%@ page language="java" import="java.util.*,com.jiangtao.domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShowMyCart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>我的购物车</h1><hr/>
    <a href="/MyShopping/GoHallUI">返回购物大厅</a>
    <form action="/MyShopping/ShoppingClServlet?type=update" method="post">
    <table border="1">
    <tr>
    <th>书籍编号</th><th>书籍名称</th><th>作者</th><th>出版社</th><th>价格</th><th>购买数量</th><th>删除</th>
    </tr>
    <%  //得到request域对象
    	ArrayList al = (ArrayList)request.getAttribute("bookList");
    	String totalPrice = (String)request.getAttribute("totalPrice");
    	//循环取出
    	for(int i=0; i<al.size(); i++) {
    		Books book = (Books)al.get(i);
    	%>
    		<tr>
    		<td><%=book.getId() %><input type="hidden" name="id" value="<%=book.getId()%>"/></td>
    		<td><%=book.getName() %></td>
    		<td><%=book.getAuthor() %></td>
    		<td><%=book.getPublishHouse() %></td>
    		<td><%=book.getPrice() %></td>
    		<td><input type="text" name="buyNums" value="<%= book.getBuyNums()%>"/></td>
    		<td><a href="/MyShopping/ShoppingClServlet?type=del&id=<%=book.getId() %>">删除</a></td>
    		</tr>
    	<% 
    	}
     %>
    
    <tr><td colspan="7"><input type="submit" value="update"/></td></tr>
    </table>
    <h4>您一共需要花费  ${totalPrice} 元</h4>
    </form>
    <a href="/MyShopping/OrderClServlet?type=submitOrder">提交订单</a>
  </body>
</html>
