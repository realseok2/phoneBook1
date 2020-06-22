<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm</title>
</head>
<body>

	<h1>전화번호 등록폼</h1>
	
	<p>
		전화번호를 등록하려면 <br>
		아래 항목을 기입하고 "등록" 버튼을 클릭하세요.
	</p>
	
	<form action = "./insert.jsp" method = "post">
		이름(Name)	:	<input type="text" name = "Name"><br>
		핸드폰(Hp)	:	<input type="text" name = "Hp"><br>
		회사(Company)	:	<input type="text" name = "Company"><br>
		<button type = "submit">등록</button>
	</form>
	
	<h5><a href = "./list.jsp">리스트 바로가기</a></h5>

</body>
</html>