<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<body>
	<%
		if (request.getParameter("result") != null) {
			int result = Integer.parseInt(request.getParameter("result"));
			if (result >= 1) {
				%>
				<script>
					alert("저장되었습니다.");
				</script>
				<%
			}
			else {
				%>
				<script>
					alert("저장에 실패했습니다.");
				</script>
				<%
			}
		}
	%>
	<div>
		<form action ="saveBook.jsp" method="post" enctype="multipart/form-data">
			도서 제목: <input type="text" name="bookName"><br>
			저자: <input type="text" name="bookAuthor"><br>
			출판사: <input type="text" name="bookPublisher"><br>
			출판 년도: <input type="number" name="bookPublishYear"><br>
			상세 설명 <textarea cols="50" rows="10" name="bookDescription"></textarea><br>
			표지 <input type="file" name="bookImage"><br>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>