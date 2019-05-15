<%--
  Created by IntelliJ IDEA.
  User: 刘海邻1
  Date: 2019/5/15
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.bean.Emp,com.db.DBUtil" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--获取账号密码 利用dbutil判断--%>
<%
    String account=request.getParameter("account");
    String password=request.getParameter("password");

    Emp emp=new Emp(account,null,password,null);
    Boolean flag=DBUtil.selectEmpAccountAndPassword(emp);
    if(flag=true)
    {
        out.println("正确");
    }
    else {
        out.println("错误");
    }
%>
</body>
</html>
