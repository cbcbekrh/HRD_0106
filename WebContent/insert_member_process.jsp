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
	String password=request.getParameter("password");
	String gender=request.getParameter("gender");
	String birth=request.getParameter("birth");
	String email1=request.getParameter("email1");
	String email2=request.getParameter("email2");
	String phone1=request.getParameter("phone1");
	String phone2=request.getParameter("phone2");
	String phone3=request.getParameter("phone3");
	String address=request.getParameter("address");
	String nickname=request.getParameter("nickname");	
	String email=email1+"@"+email2;
	String phone=phone1+"-"+phone2+"-"+phone3;
	
	pstmt=conn.prepareStatement("select name from member0106 where id=?");
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		%>
		<script>
			 alert("이미 등록된 아이디 입니다.");
			 history.back(-1);
		</script>
		<%
	}else{
		pstmt=conn.prepareStatement("insert into member0106 values(?,?,?,?,?,?,?,?,?)");
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, birth);
		pstmt.setString(6, email);
		pstmt.setString(7, phone);
		pstmt.setString(8, address);
		pstmt.setString(9, nickname);
		pstmt.executeUpdate();
		%>
		<script>
			alert("등록 완료");
			location.href='index.jsp';
		</script>
		<%
	}
%>
</body>

</html>