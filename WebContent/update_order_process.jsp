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
	String A=orderdate.substring(0, 10);	
	System.out.println(A);
	String addr=request.getParameter("addr");
	String tel=request.getParameter("tel");
	String pay=request.getParameter("pay");
	String cardno=request.getParameter("cardno");
	String prodcount=request.getParameter("prodcount");
	String total=request.getParameter("total");
	
		
	pstmt=conn.prepareStatement("update order0106 set orderdate=?,addr=?,tel=?,pay=?,cardno=?,prodcount=?,total=? where id=? and name=?");
	pstmt.setString(8, id);
	pstmt.setString(9, name);
	pstmt.setString(1, A);
	pstmt.setString(2, addr);
	pstmt.setString(3, tel);
	pstmt.setString(4, pay);
	pstmt.setString(5, cardno);
	pstmt.setString(6, prodcount);
	pstmt.setString(7, total);
	pstmt.executeUpdate();
	
%>
</body>
<script>
	alert("수정되었습니다.");
	location.href="select_order.jsp";
</script>
</html>