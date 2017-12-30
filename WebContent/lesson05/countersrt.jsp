<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<form action="countersrt.jsp">
	<input type='text' name="num1" value="${param.num1}">
	<input type='hidden' name="calcTag" value="${param.calcTag} style="width:40px">
	<input type='button' value="+" onclick="document.getElementsByName('calcTag')[0].value='+'">
	<input type='button' value="-" onclick="document.getElementsByName('calcTag')[0].value='-'">
	<input type='button' value="*" onclick="document.getElementsByName('calcTag')[0].value='*'">
	<input type='button' value="/" onclick="document.getElementsByName('calcTag')[0].value='/'">
	<input type='text' name="num2" value="${param.num2}">
	<input type='submit' value="=">
	<input type='text' name="result" value="<c:choose><c:when test="${param.calcTag=='+'}">${param.num1+param.num2}</c:when><c:when test="${param.calcTag=='-'}">${param.num1-param.num2}</c:when><c:when test="${param.calcTag=='*'}">${param.num1*param.num2}</c:when><c:otherwise>${param.num1/param.num2}</c:otherwise></c:choose>"/>
	</form>
</body>
</html>