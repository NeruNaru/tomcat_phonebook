<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVO"%>

<%
System.out.println("수정폼 진입 완료");
int no = Integer.parseInt(request.getParameter("no"));

PersonVO personvo = (PersonVO) request.getAttribute("personvo");
System.out.println(no);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>주소록</h1>
	<h2>전화번호 수정폼</h2>
	<p>전화번호를 수정하는 폼 입니다</p>
	<form action="http://localhost:8080/phonebook2/pbc?" method="get">
		<input type="hidden" name="action" value="update">
		<input type="hidden" name="no" value="<%= personvo.getPersonId() %>">
		
		<label>이름(name)</label>
		<input type="text" name="name" value="<%= personvo != null ? personvo.getName() : "" %>"> <br>
		<label>핸드폰(hp)</label>
		<input type="text" name="hp" value="<%= personvo != null ? personvo.getHp() : "" %>"> <br>
		<label>회사(company)</label>
		<input type="text" name="company" value="<%= personvo != null ? personvo.getCompany() : "" %>"> <br>

		<button>수정</button>
	</form>

	<br>
	<a href="http://localhost:8080/phonebook2/pbc?action=list">리스트바로가기</a>
</body>
</html>