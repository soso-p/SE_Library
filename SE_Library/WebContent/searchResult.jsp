<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>검색 결과</title>
</head>
<body>
	<h1>search page</h1>
	<%
		String word=request.getParameter("search");
	%>

	<h1>"<%= word %>" 검색 결과 ...</h1>
	<%@ include file="dbconn.jsp" %>
	<table border=1>
		<th>No.</th>
		<th>도서 제목</th>
		<th>저자</th>
		<th>출판사</th>
		<th>출판연도</th>
		<%
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			String sql = "select * from book where b_name like '%"+ word +"%'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
	
			while (rs.next()) {
				int id = rs.getInt("b_id");
				String title = rs.getString("b_name");
				String author = rs.getString("b_author");
				String publisher = rs.getString("b_publisher");
				int publishDate = rs.getInt("b_publishYear");
				%>
				<tr>
					<td><%=id %></td>
					<td><%=title %></td>
					<td><%=author %></td>
					<td><%=publisher %></td>
					<td><%=publishDate %></td>
				</tr>
				<%
			}
		} catch (SQLException e) {
			//out.print("Book 테이블 호출 실패.<br/>");
			//out.print("SQLException: " + e.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		%>
	</table>
</body>
</html>