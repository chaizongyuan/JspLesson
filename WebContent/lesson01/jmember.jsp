<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html注释 -->
	<!-- jsp声明 在翻译的servlet中定义全局变量和方法 -->
	<%!
		int i=0;
	    public static int add(int p1,int p2){
	    	return p1+p2;
	    }
	%>
	<!-- jsp输出 out.print(++i) -->
	<%=++i %>
	<br/>
	<%=add(123,456) %>
	
	<!-- jsp代码段实际上是定义在_jspService中的局部 每次请求都会被调用 -->
	<% 
		int j=10;
		for(int i=1;i<=j;i++){
	%>	
	<%=i %><br/>
	<% 		
		}
	%>
	
	
	<!-- 
		jsp有三种注释
		  1  html注释  会被输出到html源代码中
	                       一般用于注释html内容html标签
          2  Java注释  会被输出到翻译的Java文件中  不会出现在html代码中
                                  一般用于jsp生命  代码段中Java代码部分
          3  jsp注释 只能在jsp源代码文件中看到 不会出现在Java类和html中                        	
			 一般用于jsp内部的内容注释  比如注释代码段是干什么的jsp标签
	 -->
	
</body>
</html>