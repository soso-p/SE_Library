<%@ page contentType="text/html; charset=utf-8" %>
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
		<th>도서 제목</th>
		<th>저자</th>
		<th>출판사</th>
		<%
		BookService bookService = new BookService();
		List<Book>books = bookService.getBookList();
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