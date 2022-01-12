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
<h3 style="text-align:center; padding:10px 0;">회원 정보 조회</h3>
<table border=1 id="t2">
<tr>
<th>id</th>
<th>성명</th>
<th>패스워드</th>
<th>성별</th>
<th>생년월일</th>
<th>이메일</th>
<th>휴대폰</th>
<th>주소</th>
<th>닉네임</th>
</tr>

<%
	pstmt=conn.prepareStatement("select * from member0106");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String id=rs.getString("id");	
		String password=rs.getString("password");
		String name=rs.getString("name");
		String gender=rs.getString("gender");
		String birth=rs.getString("birth");
		String mail=rs.getString("mail");
		String phone=rs.getString("phone");
		String address=rs.getString("address");
		String nickname=rs.getString("nickname");
	
%>
<tr class="tr1">
<td><%=id %></td>
<td><%=name %></td>
<td><%=password %></td>
<td><%=gender %></td>
<td><%=birth %></td>
<td><%=mail %></td>
<td><%=phone %></td>
<td><%=address %></td>
<td><%=nickname %></td>
</tr>


<%} %>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>