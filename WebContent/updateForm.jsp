<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@	page import="com.javaex.vo.PersonVo" %>

<%
	int personId = Integer.parseInt(request.getParameter("personid"));
	System.out.println(personId);
	
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(personId);
	System.out.println(personVo.toString());
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateForm</title>
</head>
<body>

	<h1>전화번호 수정폼</h1>
	
	<p>
		전화번호를 수정하려면 <br>
		아래 항목을 수정하고 "수정" 버튼을 클릭하세요.
	</p>
	
	<form action = "./update.jsp" method = "post">

		이름(Name)	:	<input type="text" name="Name"		value	= "<%=personVo.getName()%>"><br>
		핸드폰(Hp)	:	<input type="text" name="Hp"		value	= "<%=personVo.getHp()%>"><br>
		회사(Company)	:	<input type="text" name="Company"	value	= "<%=personVo.getCompany()%>"><br>
		<input type="text" hidden name="personid" value = "<%=personVo.getPersonId()%>"><br>
				
		<button type = "submit">수정</button>
	</form>
	
	<h5><a href = "list.jsp">메인화면 바로가기</a></h5>

</body>
</html>