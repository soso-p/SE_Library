<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SE library</title>
</head>
<body>
	<% 
	//세션이 연결되어 있으면 세션 연결을 끊는다 .(세션 삭제)
	if(request.isRequestedSessionIdValid()==true){
		session.invalidate();
	}
	%>
	 <div class="container">
	    <jsp:include page="main_header.jsp"/>
 		<jsp:include page="main_profile.jsp"/>
 	</div>
 	
 	<main role="main" class="container">
		<jsp:include page="footer.jsp"/>
	</main><!-- /.container -->	
</body>
</html>