<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVO"%>

<%
int no = Integer.parseInt(request.getParameter("no"));

@SuppressWarnings("unchecked")
List<PersonVO> personList = (List<PersonVO>) request.getAttribute("pList");

PersonVO target = null;
for (PersonVO p : personList) {
    if (p.getPersonId() == no) { // personId가 no라면
        target = p;
        break;
    }
}
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
		<label>이름(name)</label>
		<input type="text" name="name" value="<%= target.getName() %>"> <br>
		<label>핸드폰(hp)</label>
		<input type="text" name="hp" value="<%= target.getHp() %>"> <br>
		<label>회사(company)</label>
		<input type="text" name="company" value="<%= target.getCompany() %>"> <br>

		<button>수정</button>
	</form>

	<br>
	<a href="http://localhost:8080/phonebook2/pbc?action=list">리스트바로가기</a>
</body>
</html>