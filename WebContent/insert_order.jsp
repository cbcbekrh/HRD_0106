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
<script>
function on(){	
	document.form.submit();	
}	
</script>
<%
	String name=request.getParameter("name");
	String orderdate=request.getParameter("orderdate");
	String tel=request.getParameter("tel");
	String addr=request.getParameter("addr");
	String cardno=request.getParameter("cardno");
	if(name == null){
		name="";
	}
	if(orderdate == null){
		orderdate="";
	}
	if(tel == null){
		tel="";
	}
	if(addr == null){
		addr="";
	}
	if(cardno == null){
		cardno="";
	}
	

	String id="";
	id=request.getParameter("id");
	if(id == null || id == ""){
		id = "";
	}else{
		pstmt=conn.prepareStatement("select * from product0106 where productid=?");
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			
		}else{
			%>
			<script>
				alert("등록되지 않은 코드입니다.");
			</script>
		<%
		id="";
		}
	}
	
	String pay="";
	pay=request.getParameter("pay");
	System.out.println(pay);
	if(pay == null){
		pay = "";		
	}else if(pay.equals("카드") && cardno == ""){
		%>
		<script>
			alert("카드번호를 입력해주세요.");
		</script>
		<%
	}else if(pay.equals("현금")){
		cardno="";
	}
	
	String prodcount="";
	prodcount=request.getParameter("prodcount");
	int total=0;
		if(prodcount == null || prodcount == ""){
		prodcount="";
	}else{
		pstmt=conn.prepareStatement("select unitprice from product0106 where productid=?");
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			int A = rs.getInt("unitprice");
			int B = Integer.parseInt(prodcount);
			total = A * B;
		}
	}
	
	
	
	

	
%>

<section id="body1">
<h3 style="text-align:center; padding:15px 0;">주문정보 등록</h3>
<form name="form" method="post" action="insert_order.jsp">
<table border=1 id="t3">
<tr>
<th id="th1">상품 코드</th>
<td><input id="in3" type="text" name="id" onchange="on();" value="<%=id %>"></td>
<th id="th1">주문자 이름</th>
<td><input id="in3" type="text" name="name" value="<%=name %>"></td>
</tr>

<tr>
<th id="th1">주문 날짜</th>
<td><input id="in3" type="text" name="orderdate" value="<%=orderdate %>"></td>
<th id="th1">전화번호</th>
<td><input id="in3" type="text" name="tel" value="<%=tel %>"></td>
</tr>

<tr>
<th id="th1">배달주소</th>
<td colspan=3><input id="in4" type="text" name="addr" value="<%=addr %>"></td>
</tr>

<tr>
<th id="th1">결제방법</th>
<td>
	<input type="radio" name="pay" value="현금" onchange="on();" <%= pay.equals("현금") ? "checked" : "" %>>현금
	<input type="radio" name="pay" value="카드" onchange="on();" <%= pay.equals("카드") ? "checked" : "" %>>카드
</td>
<th id="th1">카드번호</th>
<td><input id="in3" type="text" name="cardno" value="<%=cardno %>" <%= pay.equals("현금") ? "disabled" : "" %>></td>
</tr>

<tr>
<th id="th1">주문상품수</th>
<td><input id="in3" type="text" name="prodcount" value="<%=prodcount %>" onchange="on();"></td>
<th id="th1">주문금액</th>
<td><input id="in3" type="text" name="total" value="<%=total %>"></td>
</tr>

<tr>
<td colspan=4 align=center style="height:30px;">
	<input id="b1" type="button" value="목록">
	<input id="b1" type="submit" value="저장" onclick="check();">
</td>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script>
function check(){
	form.action="insert_order_process.jsp";
}
</script>
</html>