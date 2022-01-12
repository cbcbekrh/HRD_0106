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
<section>
<hr><h2 style="text-align:center;">상품 정보 등록 화면</h2><hr>
<form name="form" method="post" action="insert_product_process.jsp">
<table border=1 id="t1">
<tr>
<td id="td">상품코드</td>
<td colspan=3><input id="in0" type="text" name="productid"></td>
</tr>

<tr>
<td id="td">상품명</td>
<td colspan=3><input id="in0" type="text" name="productname"></td>
</tr>

<tr>
<td id="td">가격</td>
<td colspan=3><input id="in0" type="text" name="unitprice"></td>
</tr>

<tr>
<td id="td">상세정보</td>
<td colspan=3><input id="in0" type="text" name="description"></td>
</tr>

<tr>
<td id="td">제조사</td>
<td colspan=3><input id="in0" type="text" name="manufacturer"></td>
</tr>

<tr>
<td id="td">분류</td>
<td><input id="in0" type="text" name="category"></td>
<td id="td">재고수</td>
<td><input id="in0" type="text" name="unitsinstock"></td>
</tr>

<tr>
<td id="td">상태</td>
<td colspan=3>
	<input type="radio" name="condition" value="신규제품">신규제품
	<input type="radio" name="condition" value="중고제품">중고제품
	<input type="radio" name="condition" value="재생제품">재생제품
</td>
</tr>

<tr>
<td colspan=4 align=center>
	<input type="button" value="상품등록" onclick="check()">
	<input type="reset" value="다시작성">
</td>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script>
function check(){
	if(document.form.productid.value==""){
		alert("상품번호를 입력하세요.")
		document.form.productid.focus();
	}else if(document.form.productname.value==""){
		alert("상품명을 입력하세요.")
		document.form.productname.focus();
	}else{
		document.form.submit();
	}
}
</script>
</html>