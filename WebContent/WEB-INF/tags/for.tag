<%@tag  pageEncoding="UTF-8"%>
<%@attribute name="var"  type="java.lang.String" required="true" %>
<%@attribute name="begin" type="java.lang.Integer" %>
<%@attribute name="end" type="java.lang.Integer" %>
<%@attribute name="step" type="java.lang.Integer" %>

<%
 for(int i=begin;i<=end;){
	 request.setAttribute(var, i);
%>	
<jsp:doBody></jsp:doBody>
<% 
	 i=i+step;
 }
%>