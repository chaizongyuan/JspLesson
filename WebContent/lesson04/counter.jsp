<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript">
	function AcceptData(num){
		document.getElementById("accepData");
		value+=num;
		
	}
	
</script>
</head>
<body>
<center>
<jsp:useBean id="num" scope="page" class="dbUtils.Num"></jsp:useBean>
<jsp:setProperty property="str" name="num" value="${param.num1}"/>
<jsp:setProperty property="str" name="num" value="${param.num2}"/>
<jsp:setProperty property="str" name="num" value="${param.num3}"/>
<jsp:setProperty property="str" name="num" value="${param.num4}"/>
<jsp:setProperty property="str" name="num" value="${param.num5}"/>
<jsp:setProperty property="str" name="num" value="${param.num6}"/>
<jsp:setProperty property="str" name="num" value="${param.num7}"/>
<jsp:setProperty property="str" name="num" value="${param.num8}"/>
<jsp:setProperty property="str" name="num" value="${param.num9}"/>
<jsp:setProperty property="str" name="num" value="${param.num0}"/>
	<form action="counter.jsp">
		<input id="accepData" style="width:400px; height: 30px" type="text" name="accepData" value="${pageScope.num.str }"/><br/><br/>
		<input style="width:97px; height: 30px" type="submit" name="num7" value="7"/>
		<input style="width:97px; height: 30px" type="submit" name="num8" value="8"/>
		<input style="width:97px; height: 30px" type="submit" name="num9" value="9"/>
		<input style="width:97px; height: 30px" type="submit" name="chu" value="/"/><br/><br/>
		<input style="width:97px; height: 30px" type="submit" name="num4" value="4"/>
		<input style="width:97px; height: 30px" type="submit" name="num5" value="5"/>
		<input style="width:97px; height: 30px" type="submit" name="num6" value="6"/>
		<input style="width:97px; height: 30px" type="submit" name="cheng" value="*"/><br/><br/>
		<input style="width:97px; height: 30px" type="submit" name="num1" value="1"/>
		<input style="width:97px; height: 30px" type="submit" name="num2" value="2"/>
		<input style="width:97px; height: 30px" type="submit" name="num3" value="3"/>
		<input style="width:97px; height: 30px" type="submit" name="jian" value="-"/><br/><br/>
		<input style="width:97px; height: 30px" type="submit" name="num0" value="0"/>
		<input style="width:97px; height: 30px" type="submit" name="dian" value="."/>
		<input style="width:97px; height: 30px" type="submit" name="num0" value="="/>
		<input style="width:97px; height: 30px" type="submit" name="jia" value="+"/>
		
	</form>
</center>
</body>
</html>