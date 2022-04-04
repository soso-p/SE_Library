<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>

<title>404 error page</title>
</head>
<body>

<div class="container">
	<header class="blog-header py-3">
		<div class="row flex-nowrap justify-content-between align-items-center">
			<div class="col-4 pt-1">
				<a class="navbar-brand" href="main.jsp"><i class="fa fa-home" style="color:black" aria-hidden="true"></i></a>
			</div>
			<div class="col-4 text-center">
 				<a class="blog-header-logo text-dark" href="./main.jsp"
					style="font-weight: bold;
					font-size:2.0rem;">SE도서관</a>
			</div>
			<div class="col-4">
				<a class="blog-header-logo text-dark" href="./main.jsp"
					style="font-weight: bold;
					font-size:2.0rem;"></a>
			</div>
		</div>
	</header>

	<div class="nav-scroller py-1 mb-2">
		<nav class="nav d-flex justify-content-between">
			<a class="p-2 text-muted" href="./admin_process.jsp" style="font-size:1.2rem;">관리자</a>
			<a class="p-2 text-muted" href="./book_listPage.jsp" style="font-size:1.2rem;">도서 목록</a>
		</nav>
	</div>
	
	<!--오류 페이지 내용-->
  	<div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
  	  	<div class="row">
   			<div class="col-md-6 px-0">
    	  		<p class="lead my-3">오류 페이지</p>
    	 		<p class="lead mb-0"><p class="text-white font-weight-bold">존재하지 않는 페이지에 접근하셨습니다. </p>
    		</div>
    		<div class="col-md-6 px-0" style="text-align:center; display:flex;">
    			<img data-src="holder.js/300x300" class="img-thumbnail" alt="300x300" src="./resources/image/SElibrary2.jpeg" 
					data-holder-rendered="true" style="width: 300px; height:300px;margin:auto; display:inline-block;">
    		</div>
    	</div>
    	<div class="col-md-6 px-0" class="row" >
  		  <div>
  		  	<br>
  		  </div>
    	</div> 
    </div>
</div>
 	
 	<main role="main" class="container">
		<jsp:include page="footer.jsp"/>
	</main>

</body>
</html>