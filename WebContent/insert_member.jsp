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
<hr><h2 style="text-align:center;">회원정보 등록화면</h2><hr>
<form name="form" method="post" action="insert_member_process.jsp">
<table border=1 id="t1">
<tr>
<td id="td">아이디</td>
<td><input id="in1" type="text" name="id"></td>
</tr>

<tr>
<td id="td">이름</td>
<td><input id="in1" type="text" name="name"></td>
</tr>

<tr>
<td id="td">비밀번호</td>
<td><input id="in1" type="password" name="password"></td>
</tr>

<tr>
<td id="td">성별</td>
<td>
	<input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여
</td>
</tr>

<tr>
<td id="td">생년월일</td>
<td>
	<input id="in1" type="text" name="birth">
</td>
</tr>

<tr>
<td id="td">이메일</td>
<td>
	<input id="in1" type="text" name="email1">@
	<select id="sel1" name="email2">
		<option value="naver.com">naver.com</option>
		<option value="daum.net">daum.net</option>
	</select>
</td>
</tr>

<tr>
<td id="td">핸드폰</td>
<td>
	<select id="sel1" name="phone1">
		<option value="010">010</option>
		<option value="011">011</option>
	</select>-
	<input id="in2" type="text" name="phone2">-
	<input id="in2" type="text" name="phone3">
</td>
</tr>

<tr>
<td id="td">주소</td>
<td><input id="in0" type="text" name="address"></td>
</tr>

<tr>
<td id="td">닉네임</td>
<td><input id="in1" type="text" name="nickname"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input type="button" value="회원등록" onclick="check()">
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
	if(document.form.id.value==""){
		alert("아이디를 입력하세요.")
		document.form.id.focus();
	}else if(document.form.name.value==""){
		alert("이름을 입력하세요.")
		document.form.name.focus();
	}else if(document.form.password.value==""){
		alert("비밀번호를 입력하세요.")
		document.form.password.focus();
	}else{
		document.form.submit();
	}
}
</script>
</html>