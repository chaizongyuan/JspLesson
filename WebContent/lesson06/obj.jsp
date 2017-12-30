<%@ page import="model.DBUtils" %>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- core标签库 -->
<!-- 1.定义变量  变量存储在四大作用域中  page request session application
  标签的属性 value一般都支持el表达式计算 
 --> 
 <c:set var="name" value="${1+1}" scope="page"></c:set>
${pageScope.name}
<c:set var="sal" value="120000"></c:set>
<!-- 
   2. if语句 不支持else
 -->
<c:if test="${pageScope.sal<=10000}">
  低薪
</c:if>
<c:if test="${pageScope.sal>10000}">
  高薪
</c:if>
<br/>
<!-- 3. choose when otherwise  -->
<c:choose>
 <c:when test="${pageScope.sal<=10000}">
    低薪
 </c:when>
 <c:when test="${pageScope.sal>10000 and pageScope.sal<=20000}">
    中薪
 </c:when>
 <c:otherwise>
   高薪
 </c:otherwise>
</c:choose>
<!--4 循环 forEach
  for(int i=0;i<=10;i++){
  
  }
  for(String ste:数组或者集合){
  
  }
 -->
 <br/>
<c:forEach var="i" begin="1" end="10" step="1" >
  ${pageScope.i}<br/>
</c:forEach>

<%
   String[] str=new String[]{"篮球","足球"};
   pageContext.setAttribute("str", str);
   
   java.util.List list=new java.util.ArrayList();
   list.add("羽毛球");
   list.add("沙滩排球");
   pageContext.setAttribute("myList", list);
   
%>
<br/>
<c:forEach var="ste" items="${pageScope.myList }">
  ${pageScope.ste }<br/>
</c:forEach><br/>
<!-- 5 out 用于输出内容 重点   cout标签能够能内容的特殊符号进行转译输出  默认值 true表示对html进行转译 无风险  false和el表示一样 有风险-->
<c:set var="comm" value="<iframe src='https://www.baidu.com'/>"></c:set>

<c:out value="${pageScope.comm}" escapeXml="true"></c:out>

<%--  其他core标签 
<c:redirect url="http://www.baidu.com"></c:redirect>
<c:import url=""></c:import> jsp:include动态包含

--%>
<c:catch var="myEx">
 <%
    String str1=null;
    str1.toString();
 %>
</c:catch>
${pageScope.myEx}
</body>
</html>