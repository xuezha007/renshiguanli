<%@ page import="com.bean.Emp" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.db.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: 刘海邻1
  Date: 2019/5/16
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String key=request.getParameter("account");
    Map<String,Emp> map= DBUtil.map;
    Emp emp=map.get(key);
    emp.setName(request.getParameter("name"));
    emp.setPassword(request.getParameter("name"));
%>
<h3 align="center">
    修改信息成功
</h3>
</body>
</html>
