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
<section id="body1">
<h3 style="text-align:center; padding:10px 0;">상품 목록</h3>
<%
	int cnt=0;
	pstmt=conn.prepareStatement("select count(id) from order0106");
	rs=pstmt.executeQuery();
	if(rs.next()){
		cnt=rs.getInt(1);
	}	
%>
<div id="div5"><h5>총 <%=cnt %>개의 상품이 있습니다.</h5></div><hr>
<table border=1 id="t2">
<tr>
<th id="th1">상품코드</th>
<th id="th1">주문자이름</th>
<th id="th1">주문날짜</th>
<th id="th1">배달주소</th>
<th id="th1">전화번호</th>
<th id="th1">결제방법</th>
<th id="th1">카드번호</th>
<th id="th1">주문상품수</th>
<th id="th1">판매가격</th>
<th id="th1">총금액</th>
<th id="th1">구분</th>
</tr>

<%
	pstmt=conn.prepareStatement("select a.*,b.unitprice from order0106 a, product0106 b where a.id=b.productid");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String id=rs.getString("id");
		String name=rs.getString("name");
		String orderdate=rs.getString("orderdate");
		String addr=rs.getString("addr");
		String tel=rs.getString("tel");
		String pay=rs.getString("pay");
		String cardno=rs.getString("cardno");
		if(cardno == null){
			cardno = "";
		}
		String prodcount=rs.getString("prodcount");
		String total=rs.getString("total");
		String unitprice=rs.getString("unitprice");
				
%>
<tr>
<td id="td1"><%=id %></td>
<td id="td1"><%=name %></td>
<td id="td1"><%=orderdate %></td>
<td id="td1"><%=addr %></td>
<td id="td1"><%=tel %></td>
<td id="td1"><%=pay %></td>
<td id="td1"><%=cardno %></td>
<td id="td1"><%=prodcount %></td>
<td id="td1"><%=unitprice %></td>
<td id="td1"><%=total %></td>
<td id="td1">
	<a href="update_order.jsp?id=<%=id %>
	&name=<%=name %>
	&orderdate=<%=orderdate %>
	&addr=<%=addr %>
	&tel=<%=tel %>
	&pay=<%=pay %>
	&cardno=<%=cardno %>
	&prodcount=<%=prodcount %>
	" onclick="if(!confirm('정말 수정하시겠습니까?')) return false;">수정</a> /
	<a href="delete_order.jsp?id=<%=id %>&name=<%=name %>" onclick="if(!confirm('정말 삭제하시겠습니까?')) return false;">삭제</a>
</td>
</tr>
<%} %>
</table>
<div id="div6"><input id="b2" type="button" value="작성" onclick="location.href='insert_order.jsp'"></div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>