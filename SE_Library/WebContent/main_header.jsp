<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
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

 		
 </body>
</html>