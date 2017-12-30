<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
一到一千的质数:
<br/>
   <%
   for(int i=1 ; i<1000 ; i++){
	   int temp=0;
	   for(int x=1 ; x<=i ; x++){
		   if(i%x==0){
			   temp++;
		   }
	    }
		if(temp==2){

   %>
   <%=i %>
   <%
	    }
  
    }
   %>  
    
</body>
</html>