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
	String orderdate=request.getParameter("orderdate");
	String addr=request.getParameter("addr");
	String tel=request.getParameter("tel");
	String pay=request.getParameter("pay");
	String cardno=request.getParameter("cardno");
	String prodcount=request.getParameter("prodcount");
	String total=request.getParameter("total");
	
	pstmt=conn.prepareStatement("insert into order0106 values(?,?,?,?,?,?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, orderdate);
	pstmt.setString(4, addr);
	pstmt.setString(5, tel);
	pstmt.setString(6, pay);
	pstmt.setString(7, cardno);
	pstmt.setString(8, prodcount);
	pstmt.setString(9, total);
	pstmt.executeUpdate();
	
%>
</body>
<script>
	alert("완료되었습니다.");
	location.href="select_order.jsp";
</script>
</html>