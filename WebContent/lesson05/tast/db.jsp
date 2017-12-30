<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%-- <jsp:useBean id="dept" class="cn.et.MyDept"></jsp:useBean>
  ${pageScope.dept.table} --%>
  <jsp:useBean id="dept" class="model.MyDept"></jsp:useBean>
	<table style="width:100%" border=1>
		<c:forEach var="dept" items="${pageScope.dept.tables}">
			<tr>
				<th><c:out value="${dept.deptno }"></c:out></th>
				<th><c:out value="${dept.dname }"></c:out></th>
				<th><c:out value="${dept.loc }"></c:out></th>
		</tr>
		</c:forEach>
	</table>
</body>
</html>