<%@ page language="java" import="java.util.*,com.jiangtao.domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hall.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function viewCart() {
		window.location.href="/MyShopping/ShoppingClServlet";
	}
</script>
  </head>
 
  <body>
    <h1>购物大厅</h1><hr/>
   <h3>
   		欢迎登陆| <a href="/MyShopping/index.jsp"> 返回登录界面 | </a>
   		<a href="/MyShopping/OrderClServlet?type=viewOrder">查看订单</a>
   </h3>
   
    <table border="1">
    <tr><th>书名</th><th>价格</th><th>作者</th><th>出版社</th><th>点击购买</th></tr>
    <%
    	
    	ArrayList<Books> al = (ArrayList<Books>) request.getAttribute("books");
    	for(int i=0; i<al.size(); i++) {
    		Books book = new Books();
    		book = al.get(i);
    %>
    	<tr><td><%=book.getName() %></td>
    	<td><%=book.getPrice() %></td>
    	<td><%=book.getAuthor() %></td>
    	<td><%=book.getPublishHouse() %></td>
    	<td><a href="/MyShopping/ShoppingClServlet?type=add&id=<%=book.getId()%>">点击购买</a></td>
    	</tr>
    <% 
    	}
    %>
        <tr><td colspan="4" ><input type="button" onclick="viewCart()" value="查看购物车"/></td></tr>
    </table>
  </body>
</html>
