<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	pstmt=conn.prepareStatement("delete from order0106 where id=? and name=?");
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.executeUpdate();
	
%>
</body>
<script>
	alert("삭제 완료");
	location.href="select_order.jsp";
</script>
</html>