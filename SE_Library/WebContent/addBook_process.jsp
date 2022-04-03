<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save book</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	
	<%
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			String saveFolder = application.getRealPath("/imageStorage");
			String encType = "UTF-8";
			int maxSize = 5 * 1024 * 1024;
			
			MultipartRequest multi = null;
			multi = new MultipartRequest(request, saveFolder, maxSize, encType, new DefaultFileRenamePolicy());
			
			String bookName = multi.getParameter("bookName");
			String bookAuthor = multi.getParameter("bookAuthor");
			String bookPublisher = multi.getParameter("bookPublisher");
			String bookPublishYear = multi.getParameter("bookPublishYear");
			String bookDescription = multi.getParameter("bookDescription");
			String bookImageName = multi.getFilesystemName("bookImage");
			
			if (bookImageName != null) {
			
				String sql = "insert into book (b_name, b_author, b_publisher, b_publishYear, b_description, b_imageName) values (?, ?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bookName);
				pstmt.setString(2, bookAuthor);
				pstmt.setString(3, bookPublisher);
				pstmt.setString(4, bookPublishYear);
				pstmt.setString(5, bookDescription);
				pstmt.setString(6, bookImageName);
			}
			else {
				String sql = "insert into book (b_name, b_author, b_publisher, b_publishYear, b_description) values (?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bookName);
				pstmt.setString(2, bookAuthor);
				pstmt.setString(3, bookPublisher);
				pstmt.setString(4, bookPublishYear);
				pstmt.setString(5, bookDescription);
			}
			
			result = pstmt.executeUpdate();
	
		} catch (SQLException e) {
			out.print("insert 실패.<br/>");
			out.print("SQLException: " + e.getMessage());
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		
		response.sendRedirect("addBook.jsp?result="+result);
		%>
</body>
</html>