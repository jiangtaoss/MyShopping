<%@ page language="java" import="java.util.*,com.jiangtao.domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderDetail.jsp' starting page</title>
    
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
    <h1 align="center">订单详情</h1><hr/>
    <a href="/MyShopping/OrderClServlet?type=viewOrder">返回查看订单界面</a>
    <table border="1">
    <tr><th>订单详情序列号</th><th>所属订单号</th><th>书籍名称</th><th>购买数量</th></tr>
    <%
    	ArrayList al = (ArrayList)request.getAttribute("orderDetailList");
    	for(int i=0; i<al.size(); i++) {
	    	OrderDetail orderDetail = (OrderDetail)al.get(i);
	    %>
	    	<tr>
	    	<td><%=orderDetail.getOrder_detail_id() %></td>
	    	<td><%=orderDetail.getOrder_detail_orderId() %></td>
	    	<td><%=orderDetail.getOrder_detail_bookId() %></td>
	    	<td><%=orderDetail.getOrder_detail_buyNums() %></td>
	    	</tr>
	    <% 
    	}
     %>
  </body>
</html>
