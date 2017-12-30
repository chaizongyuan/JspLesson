<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="b.jsp" method="post">
	<div>
		<p>姓名:
		<input type="text" name="txt" >
	</div>
	<div>
		<p>密码:
		<input type="password" name="pwd">
	</div>
	<div>
		<p>性别:
		<input type="radio" name="rdo" value="男">男
		<input type="radio" name="rdo" value="女">女
	</div>
	<div>
		<p>爱好:
		<input type="checkbox" name="cb" value="文学">文学
		<input type="checkbox" name="cb" value="音乐">音乐
		<input type="checkbox" name="cb" value="体育">体育
	</div>
	<div>
		<p>地址:
		<SELECT NAME="sel" size=1>
			<option value="北京">北京</option>
			<option value="上海">上海</option>
			<option value="天津">天津</option>
		</SELECT>
	</div>
	<div>
		<p>
		<input type="submit" value="提交">
		<input type="reset" value="重置">
	</div>
</form>
</center>
</body>
</html>