<%--
  Created by IntelliJ IDEA.
  User: 刘海邻1
  Date: 2019/5/15
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人事管理系统</title>
</head>
<body>
    <h3 align="center">人事管理登录系统</h3>
    <hr>
<%--    action代表服务器端处理程序--%>
    <form action="controll.jsp">
<table align="center">
    <tr>
        <td>账号</td>
        <td>
            <input type="text" name="account">
        </td>
    </tr>
    <tr>
        <td>密码</td>
        <td>
            <input type="password" name="password">
        </td>
    </tr>
  <tr>
      <td>
          <input type="submit" values="登录">
      </td>
  </tr>
</table>
    </form>
</body>
</html>
