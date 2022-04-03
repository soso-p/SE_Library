<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<!-- validaion.js파일에서 유효성 검사  -->
<script type="text/javascript" src="./resources/js/validation.js"></script>
<body>
 	
	<%
		if (request.getParameter("result") != null) {
			int result = Integer.parseInt(request.getParameter("result"));
			if (result >= 1) {
				%>
				<script>
					alert("도서 등록이 완료되었습니다.");
				</script>
				<%
			}
			else {
				%>
				<script>
					alert("도서 등록에 실패했습니다.");
				</script>
				<%
			}
		}
	%>
	<div class="jumbotron" style="background-color:#BDBDBD;">
		<div class="container">
			<jsp:include page="addBook_header.jsp"/>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newBook" action="./addBook_process.jsp" class="form-horizontal" 
			method="post" enctype="multipart/form-data">
			<div class="form-group row"> 
				<label class="col-sm-2">도서 제목</label>
				<div class="col-sm-3">
					<input type="text" id="bookName" name="bookName" class="form-control">
					<!-- 유효성 검사 위해 id 속성 추가 -->
 				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">저자</label>
				<div class="col-sm-3">
					<input type="text" id="author" name="bookAuthor" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출판사</label>
				<div class="col-sm-3">
					<input type="text" id ="publisher" name="bookPublisher" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출판 년도</label>
				<div class="col-sm-3">
					<input type="number" id ="publishYear" name="bookPublishYear" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세 설명</label>
				<div class="col-sm-3">
					<textarea id = "description" name="bookDescription" cols="60" rows="3" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">표지</label>
				<div class="col-sm-5">
					<input type="file" name="bookImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type= "submit" class="btn btn-primary" 
					value="등록" 
					onclick="CheckAddBook()">
				</div>
			</div>
		</form>
	<jsp:include page="footer.jsp"/>	
 	</div>

</body>
</html>