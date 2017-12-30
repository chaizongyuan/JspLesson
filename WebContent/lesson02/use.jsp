<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sun.org.apache.xml.internal.security.Init"%>
<%@page import="dbUtils.DbUtils"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public Connection conn = null;
		public void init() throws ServletException{
			try{
				conn = DbUtils.getConnection();
			}catch(Exception e){
				
			}
		}
		
	%>
	<%
		request.setCharacterEncoding("UTF-8"); 
	%>
	<%
		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		String telphone = request.getParameter("telphone");
		String rdo = request.getParameter("rdo");
		String emailName=request.getParameter("emailName");
		String sel = request.getParameter("sel");
		String[] cb = request.getParameterValues("cb");
		String str="";
		if (cb!= null)
			for(String st:cb){
				if(st.equals("1")){
					str=str+"运动";
				}else if(st.equals("2")){
					str=str+"音乐";
				}else{
					str=str+"看书";
				}
			}
			
		
		String bornDate = request.getParameter("bornDate");
	%>
	<%
		String sql="insert into user (userName,pwd,telphone,emailName,bornDate,rdo,cb) values(?,?,?,?,?,?,?)";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
		}catch(Exception e){
			
		}
		ps.setString(1,userName);
		ps.setString(2,pwd);
		ps.setString(3,telphone);
		ps.setString(4,emailName);
		ps.setObject(5,bornDate);
		ps.setString(6,rdo);
		ps.setObject(7,str);
		ps.execute();
	%>
	
	
	您输入的用户名是:<%=userName%><br/>
	您输入的密码是:<%=pwd%><br/>
	您输入的电话号码是:<%=telphone%><br/>
	您输入的性别是:<%=rdo.equals("男")?"男":"女"%><br/>
	您输入的邮件地址是:<%=emailName %><br/>
	您输入的邮件域名是:<%=sel %><br/>
	您输入的日期是:<%=bornDate %><br/>
	您输入的爱好是:<%=str %><br/>
	
</body>
</html>