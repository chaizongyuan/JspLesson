<%@tag import="java.util.Collection"%>
<%@tag  pageEncoding="UTF-8"%>
<%@attribute name="var"  type="java.lang.String" required="true" %>
<%@attribute name="items" type="java.lang.Object" %>
<%
if(items instanceof Collection){
	Collection<String> c=(Collection<String>)items;
	for(String ctemp:c){
		request.setAttribute(var, ctemp);
%>
<jsp:doBody></jsp:doBody>
<%
	}
}
%>