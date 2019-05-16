<%--
  Created by IntelliJ IDEA.
  User: 刘海邻1
  Date: 2019/5/16
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工更新界面</title>
</head>
<body>
<h3>员工更新界面</h3>
<hr/>
<h3>
    登录账号：<%=session.getAttribute("account")

    %>
</h3>
<form>
    <table align="center" border="1" width="500px">
        <tr>
            <td>账号</td>
            <td><input type="text" name="account"></td>
        </tr>
        <tr>
            <td>名字</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="email"></td>
        </tr>


    </table>
</form>
</body>
</html>
