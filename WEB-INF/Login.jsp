<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
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
    <h1 align="center">登录界面</h1><hr/>
    <form action="/MyShopping/GoHallUI" method="post">
    <table  align="center" border="1">
    <tr><td>用户号</td><td><input type="text" name="id" /></td></tr>
    <tr><td>密    码</td><td><input type="password" name="password" /></td></tr>
    <tr><td><input type="submit" value="登录"/></td><td><input type="reset" value="重置"/></td></tr>
    </table>
    </form>
    <%
    String err = (String)request.getAttribute("err");
    if(err != null) {
    %>
    <font color="red"><%=err %></font>
    <% 
    }
     %>
  </body>
</html>
