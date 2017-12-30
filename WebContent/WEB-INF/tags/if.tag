<%@tag  pageEncoding="UTF-8"%>
<%@attribute name="test" required="true" type="java.lang.Boolean" %>

<%
  if(test){
%>
 <jsp:doBody></jsp:doBody>
<%   
  }
%>
