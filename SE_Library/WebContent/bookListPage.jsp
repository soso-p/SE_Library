<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.BookService"%>
<%@ page import="java.util.List"%>
<%@ page import="domain.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List Page</title>
</head>
<body>
	<table>
		<th>No.</th>
		<th>책 제목</th>
		<th>저자</th>
		<th>출판사</th>
		<%
		List<Book>books = BookService.getBookList();
		for (int i=0;i<books.size();i++){
			Book book = books.get(i);
			int id = book.getId();
			String title = book.getTitle();
			String author = book.getAuthor();
			String publisher = book.getPublisher();
			%>
			<tr>
				<td><%=id %></td>
				<td><%=title %></td>
				<td><%=author %></td>
				<td><%=publisher %></td>
			</tr>
			<%
		}
		%>

	</table>
</body>
</html>