<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.DBUtils"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="ex" %> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ex:add p1="12" p2="240"></ex:add>
<ex:if test="${1==2}">
  hello
</ex:if>
<ex:for var="i" begin="1" end="10" step="1">
    ${requestScope.i}
</ex:for>
<%
	List list=new ArrayList();
	list.add("zs");
	list.add("ls");
	pageContext.setAttribute("list", list);
%>
<ex:forEach var="mystr" items="${pageScope.list}">
    ${requestScope.mystr}
</ex:forEach>

</body>
</html>