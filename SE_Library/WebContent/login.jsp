<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Login</title>
</head>
<body>
	<%
		String error=request.getParameter("error");
		if(error!=null) {
			out.print("<div class='alert alert-danger'>");
			out.print("아이디와 비밀번호를 확인해주세요.");
			out.print("</div>");
		}
	%>
	<form name="loginForm" action="j_security_check" method="post">
		<p> 관리자ID : <input type="text" name="j_username"/>
		<p> 비밀번호   : <input type="password" name="j_password"/>
		<p> <input type="submit" value="전송"/>
	</form>
</body>
</html>