<%@ page language="java" import="java.util.*,com.jiangtao.domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showMyOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
   		function goSubmitOrder() {
   			window.location.href = "/MyShopping/SubmitOrderServlet";
   		}
  </script>
  <body>
  <%
  		Users_ user = (Users_)session.getAttribute("loginUser");
   %>
   	<h1>我的订单</h1>
   	<table border="1">
   	<tr><td colspan="2">我的个人信息</td></tr>
   	<tr><td>用户名</td><td><%=user.getName() %></td></tr>
   	<tr><td>电子邮件</td><td><%=user.getEmail() %></td></tr>
   	<tr><td>用户级别</td><td><%=user.getGrade() %></td></tr>
   	</table>
   	<hr/>
   	<table border="1">
    <tr><td>BookId</td><td>书名</td><td>作者</td><td>出版社</td><td>价格</td><td>数量</td></tr>
    <%
    	ArrayList al = (ArrayList)request.getAttribute("orderList");
    	String totalPrice = (String)request.getAttribute("totalPrice");
    	for(int i=0; i<al.size(); i++) {
    		Books book = (Books)al.get(i);
    %>		
    		<tr>
    		<td><%=book.getId() %></td>
    		<td><%=book.getName() %></td>
    		<td><%=book.getAuthor() %></td>
    		<td><%=book.getPublishHouse() %></td>
    		<td><%=book.getPrice() %></td>
    		<td><%=book.getBuyNums() %></td>
    		</tr>
    <% 	
    	}
     %>
     
   	</table>
   	<h3>您需要支付  ${totalPrice} 元</h3>
   	<!-- 按钮提交使用javascript控制 -->
   	<input type="button" onclick="goSubmitOrder()" value="确认提交"/>
  </body>
</html>
