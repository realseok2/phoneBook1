<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	PhoneDao phoneDao = new PhoneDao();
List<PersonVo> personList = phoneDao.getPersonList();
System.out.println(personList.toString());
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	<p>입력한 정보의 내역입니다.</p>
	<%----------------------------------------------------------------------------------------------%>
	<p>

		<a href="./writeForm.jsp"><button type="button">추가</button></a>
		<a href="./writeForm.jsp"><button type="button">검색</button></a>

	</p>
	<%----------------------------------------------------------------------------------------------%>

	<%for(PersonVo personVo : personList) { %>
	<table border="1">
		<colgroup>
			<col style="width: 120px;">
			<col style="width: 170px;">
		</colgroup>

		<tbody>
			<tr>
				<td>이름(Name)</td>
				<td><%= personVo.getName() %></td>
			</tr>


			<tr>
				<td>핸드폰(Hp)</td>
				<td><%= personVo.getHp() %></td>
			</tr>

			<tr>
				<td>회사(Company)</td>
				<td><%= personVo.getCompany() %></td>
			</tr>
			
			<tr>
				<td><a href="./updateForm.jsp?personid=<%=personVo.getPersonId()%>"><button type="button">수정</button></a></td>
				<td><a href="./delete.jsp?personid=<%=personVo.getPersonId()%>"><button type="button">삭제</button></a></td>
			</tr>

		</tbody>
	</table>

	<br>

	<% } %>
	


	<%----------------------------------------------------------------------------------------------------------%>
	
	
	
	
	
	
	
	
	<%----------------------------------------------------------------------------------------------------------%>
	
	
	
</body>
</html>