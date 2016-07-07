<%@ page language="java" import="java.util.*,com.jiangtao.domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewOrder.jsp' starting page</title>
    
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
    <h1 align="center">查看订单</h1><hr/>
    <a href="/MyShopping/GoHallUI">返回购物大厅</a>
    <table border="1">
    <tr><th>订单号</th><th>用户号</th><th>订单总额</th><th>订单时间</th><th>订单详情</th></tr>
    <%
    	ArrayList al = (ArrayList)request.getAttribute("orderList");
    	for(int i=0; i<al.size(); i++) {
    		OrderBooks orderBooks = (OrderBooks)al.get(i);	
    %>
    	<tr>
    	<td><%=orderBooks.getOrder_id() %></td>
    	<td><%=orderBooks.getOrder_userId() %></td>
    	<td><%=orderBooks.getTotalPrice() %></td>
    	<td><%=orderBooks.getOrderTime() %></td>
    	<td><a href="/MyShopping/OrderClServlet?type=orderDetail&orderId=<%=orderBooks.getOrder_id() %>">订单详情</a></td>
    	</tr>
    <% 
    	}
     %>
     </table>
  </body>
</html>
