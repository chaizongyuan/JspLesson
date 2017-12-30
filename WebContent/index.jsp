
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!-- 
	pageEncoding="编码"  jsp在翻译成servlet的Java文件时  设置的Java文件的字符集
	contentType="text/html; charset=UTF-8"  响应时 响应给浏览器的字符集
	没有设置contentType默认值 text/html; charset=%pageEncoding%
 -->
 <%@ page import="java.lang.*" %>
 <!-- 是否忽略el表达式  不同的tomcat 对el表达式支持不一样-->
 <%@ page isELIgnored="false" %>
 <!--  是否是线程安全
 	servlet 是单实例  线程不安全的  节省内存开销
 	多实例线程安全 内存开销增大
 	SingleThreadModel
 -->
 <%@ page isThreadSafe="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${1+1} 

</body>
</html>