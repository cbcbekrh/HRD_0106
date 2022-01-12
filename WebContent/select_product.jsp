<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="DBConn.jsp" %>
<section>
<h3 style="text-align:center; padding:10px 0;">상품 정보 조회</h3>
<table border=1 id="t2">
<tr>
<th>no</th>
<th>상품코드</th>
<th>상품명</th>
<th>가격</th>
<th>상세정보</th>
<th>분류</th>
<th>제조사</th>
<th>재고수</th>
<th>상태</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select * from product0106");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String productid=rs.getString("productid");	
		String productname=rs.getString("productname");
		String unitprice=rs.getString("unitprice");
		String description=rs.getString("description");
		String category=rs.getString("category");
		String manufacturer=rs.getString("manufacturer");
		String unitsinstock=rs.getString("unitsinstock");
		String condition=rs.getString("condition");
		no++;
	
%>
<tr class="tr1">
<td><%=no %></td>
<td><%=productid %></td>
<td><%=productname %></td>
<td><%=unitprice %></td>
<td><%=description %></td>
<td><%=category %></td>
<td><%=manufacturer %></td>
<td><%=unitsinstock %></td>
<td><%=condition %></td>
</tr>


<%} %>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>