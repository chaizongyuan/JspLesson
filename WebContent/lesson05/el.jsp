<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${1+1}<br/>
${2==2 and 'boy'=='girl' }<br/>
${2 eq 2 and 'boy' eq 'girl' }<br/>
<!-- less than 小于 lt
	less equal 小于等于 le
	greater than 大于 gt
	greater equal 大于等于 ge
	 equal等于 
 -->
 ${1 lt 5} <br/>
 <!-- empty 判断是否为空
 	!=null && !=''
  -->
${empty 'abc' }
</body>
</html>