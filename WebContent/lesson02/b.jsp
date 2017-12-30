<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); 
	%>
	<%
		String s = request.getParameter("txt");
		out.println("你的姓名是:"+s);
	%>
	<br/>
	<%  	
		String y=request.getParameter("pwd");
		if (y!=null)
		out.println("你的密码是:"+y);
	%>
	<br/>
	<% 
		String r=request.getParameter("rdo");
		out.println("你的性别是:" +r);
	%>
	<br/>
	<%
		String j[ ] = request.getParameterValues("cb");
		if (j!= null) {
			for (int i = 0; i < j.length; i++)
				out.println("你的爱好是:"+j[i]);
		}
	%>
	<br/>
	<%
		String w=request.getParameter ("sel");
		if (w!=null)
		out.println("你的选择是:" + w);
	%>
</body>
</html>