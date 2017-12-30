<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function checkform(){
			var userName = document.getElementsByName("userName")[0].value;
			if(userName==null || userName==""){
				alert("请输入您的用户名");
				return ;
			}
			var pwd = document.getElementsByName("pwd")[0].value;
			var pwds = document.getElementsByName("pwds")[0].value;
			if(pwd != pwds){
				alert("两次输入的密码不一致");
				return;
			}
			var emailName = document.getElementsByName("emailName")[0].value;
			if(emailName==null || emailName==""){
				alert("请输入您的邮箱地址");
				return ;
			}
			var telphone = document.getElementsByName("telphone")[0].value;
			var regex =/^[0-9]{11}$/;
			if(!regex.test(telphone)){
				alert("请输入11位的数字");
				return ;
			}
			document.forms[0].submit();
		}
	</script>
</head>
<body>
<center>
<font color="blue" size="10">欢迎注册</font><p>
<form action="use.jsp" method="post">
	<p><span style="padding-left:18px">用户名:
	<input type="text" style=width:200px name="userName" >
	</span>
	<p>输入密码:
	<input type="password" style=width:200px name="pwd">
	<p>确认密码:
	<input type="password" style=width:200px name="pwds">
	<p>手机号码:
	<input type="text" style=width:200px name="telphone" >
	<p><span style="padding-left:100px">邮件地址:</span>
	<input type="email" style=width:200px name="emailName">
	<span>@</span>
	<SELECT NAME="sel" size=-1>
	<option value="163.com">163.com</option>
	<option value="126.com">126.com</option>
	<option value="yeah.net">yeah.net</option>
	</SELECT>
	<p><span style="padding-right:70px">出生日期:
	<input type="date" name="bornDate">
	</span>
	<p><span style="padding-right:98px">性别:
	<input type="radio" name="rdo" value="男">男
	<input type="radio" name="rdo" value="女">女
	</span>
	<p><span style="padding-right:8px">爱好:
	<input type="checkbox" name="cb" value="1">运动
	<input type="checkbox" name="cb" value="2">音乐
	<input type="checkbox" name="cb" value="3">看书
	</span>
	<p><span style="padding-left:280px">
		<input type="checkbox" class="check" id="checkAgree" /> 
		<span  style="font-size: 14px;"><label for="checkAgree">我已阅读并同意遵守</label>
		</span> 
		<a href="/otn/regist/rule;jsessionid=072C829A15BCCFFA86EE81DC9954A16D"
			  class="ft14" target="_blank" shape="rect">《账号服务中心网站服务条款》
		</a>
		</span>
		</p>
		<span>
			<a id="mainRegA" href="javascript:checkform()" class="btnReg"><font  color="green" size="4">立即注册</font></a>
		</span>
</form>
</center>
</body>
</html>