<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
	<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<meta charset="UTF-8">
	<title>Book List Page</title>
</head>
<body>
	<div class = "jumbotron" style="background-color:#BDBDBD;">
		<div class="container">
			<header class="blog-header py-3">
			    <div class="row flex-nowrap justify-content-between align-items-center">
			      <div class="col-4 pt-1">
			        <a class="navbar-brand" href="./main.jsp"><i class="fa fa-home" style="color:black" aria-hidden="true"></i></a>
			      </div>
			      <div class="col-4 text-center">
			        <a class="blog-header-logo text-dark"
			        	style="font-weight: bold;
			        	font-size:2.0rem;">SE 도서목록 검색 결과</a>
			      </div>
			       <div class="col-4">
			        <a class="blog-header-logo text-dark" 
			        	style="font-weight: bold;
			        	font-size:2.0rem;"></a>
			      </div>
			    </div>
		 	</header>
		</div>
	</div>
 	<div class="container" align="center">
 		<%
 			String word = request.getParameter("search");
 			if (word==null || word=="")
 				word="";
 		%>
		<%@ include file="dbconn.jsp" %>
		<table class="table table-striped table-bordered text-center">
			<tr>
				<th>No.</th>
				<th>도서 제목</th>
				<th>저자</th>
				<th>출판사</th>
				<th>출판연도</th>
				<th>비고</th>
			</tr>
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
					<tr class="">
						<td><%=id %></td>
						<td><%=title %></td>
						<td><%=author %></td>
						<td><%=publisher %></td>
						<td><%=publishDate %></td>
						<td class="p-1"><a class="btn btn-secondary text-white" href="book.jsp?id=<%=id%>">상세보기 &raquo;</a></td>
					</tr>
					<%
				}
			} catch (SQLException e) {
				out.print("Book 테이블 호출 실패.<br/>");
				out.print("SQLException: " + e.getMessage());
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
 	
 	</div>
</body>
</html>