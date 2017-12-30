<%@page import="model.DBUtils"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 去空格 -->
${fn:trim('  hello  function ')}<br/>
<!-- 包含 -->
${fn:contains('hello jiaozi','j')}<br/>
<!-- 拆分字符串 -->
<c:forEach var="a" items="${fn:split('a,b,c',',')}">
  ${pageScope.a }<br/>
</c:forEach>
<!-- 将字符串转换成大写 -->
${fn:toUpperCase('AaEeRrGgXxDd')}<br/>
<!-- 将字符串转换成小写 -->
${fn:toLowerCase('AaEeRrGgXxDd')}<br/>
<!-- 截取字符串 -->
${fn:substring('hello', 2, 4)}<br/>
<!-- 将字符串转换为大写 -->
${fn:toUpperCase('ADDff')}<br/>
<!-- 将字符串转换为小写  -->
${fn:toLowerCase('ADDff')}<br/>
<!-- 字符串以lo结尾 返回true -->
${fn:endsWith('hello', 'lo')}<br/>
<!-- 字符串以hel开始   返回true -->
${fn:startsWith('hello world', 'hel')}<br/>
<!-- 截取字符串从左往右 -->
${fn:substringBefore('hello','e')}<br/>
<!-- 截取字符串从右往左 -->
${fn:substringAfter('hello', 'e')}<br/>
<!-- 长度 -->
${fn:length('hello')}<br/>
<!-- 一个字符串在另一个字符串的位置 -->
${fn:indexOf('hello', 'h')}<br/>
</body>
</html>