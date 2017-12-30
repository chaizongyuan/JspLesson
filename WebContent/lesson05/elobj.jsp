<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- el表达式的内置对象
pageScope requestScope sessionScope aplicationScope
例 pageContext.setAttribute("ms",new MyStudent())
 -->
<jsp:useBean id="ms" class="dbUtils.MyStudent" scope="page"></jsp:useBean>
<jsp:setProperty property="id" name="ms" value="1"/>
<jsp:setProperty property="name" name="ms" value="张三"/>
${pageScope.ms.name}<br/>
<jsp:useBean id="ms1" class="dbUtils.MyStudent" scope="session"></jsp:useBean>
<jsp:setProperty property="id" name="ms1" value="1"/>
<jsp:setProperty property="name" name="ms1" value="李四"/>
${sessionScope.ms1.name}<br/>
<%
	pageContext.setAttribute("id", 1);
	request.setAttribute("id", 2);
	session.setAttribute("id", 3);
	application.setAttribute("id", 4);
%>
${sessionScope}<br/>
${pageContext.request.contextPath}<br/>
${pageContext.session.id}<br/>
<!-- 使用param内置对象获取url上的参数 -->
${param.id}<br/>
${paramValues.id}<br/>
<!-- 获取请求头header -->
${header.Connection}<br/>
${header['Accept-Language']}<br/>
<!-- cookie -->
${cookie.JSESSIONID.value}<br/>
</body>
</html>