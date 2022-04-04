<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
   <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
                    font-size:2.0rem;">SE 도서 상세 정보</a>
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
	<%@ include file="dbconn.jsp" %>
	<div class="container">
	<%
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			int bookId = Integer.parseInt(request.getParameter("id"));
			String sql = "select * from book where b_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookId);
			rs = pstmt.executeQuery();

			rs.next();
			int id = rs.getInt("b_id");
			String title = rs.getString("b_name");
			String author = rs.getString("b_author");
			String publisher = rs.getString("b_publisher");
			int publishYear = rs.getInt("b_publishYear");
			String description = rs.getString("b_description");
			String imageName = rs.getString("b_imageName");
			%>
			<div class="row">
			<div class ="col-md-4">
				<img src="./resources/image/<%=imageName %>" style="width: 100%"/>
			</div>
			<div  class="col-md-8"	>
				<h3><%=title %></h3>
				<p><%=description %>
				<p> <b>출판사 </b> : <%=publisher %>
				<p> <b>저자 </b> : <%=author %>
				<p> <b>출판날짜 </b> : <%=publishYear %>		
			</div>
		</div>
		<br>
		<hr>
			<%
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
	</div>
	
	<main class="container">
		<jsp:include page="footer.jsp"/>
	</main>
</body>
</html>