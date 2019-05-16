<%--
  Created by IntelliJ IDEA.
  User: 刘海邻1
  Date: 2019/5/15
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.bean.Emp,com.db.DBUtil" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>响应的字符编码集 <%=response.getCharacterEncoding()%>
</h3>
<%--获取账号密码 利用dbutil判断--%>
<%
    String account = request.getParameter("account");
    String password = request.getParameter("password");

    Emp emp = new Emp(account, null, password, null);
    Boolean flag = DBUtil.selectEmpAccountAndPassword(emp);
    Map<String, Emp> map = DBUtil.map;
    if (flag = true) {
        session.setAttribute("account", account);
%>
<h3 align="right">登录账户
    <%=
    session.getAttribute("account")%>
</h3>

<h3 align="center"> 欢迎来到人事管理首页</h3>
<hr>
<table align="center" border="1">
    <tr>
        <td>账号</td>
        <td>员工姓名</td>
        <td>邮箱</td>
        <td>修改</td>
    </tr>
    <%
        for (String key : map.keySet()) {
            Emp e = map.get(key);
    %>
    <tr>
        <td><%=e.getAccount() %>
        </td>
        <td><%=e.getName()%>
        </td>
        <td><%=e.getPassword()%>
        </td>
        <td>
            <a href="update.jsp">修改
            </a>
        </td>
    </tr>
    <%
        }
    %>
</table>


<%
    } else {
        out.println("错误");
    }
%>
</body>
</html>
