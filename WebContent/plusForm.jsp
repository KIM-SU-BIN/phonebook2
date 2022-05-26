<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>추가폼</h2>
	<p>
	전화번호를 추가하려면<br>
	   아래 항목을 기입하고 "추가" 버튼을 클릭하세요.
	 </p>
	<h3>전화번호</h3>
	<form action= "./insert.jsp" method="get">
		핸드폰(hp)		<input type="text" name="" value=""> <br>
		자택(home)	<input type="text" name="" value=""> <br>
		기타(ect)		<input type="text" name="" value=""> <br>
	<button type = "submit"> 추가 </button>

	</form>
</body>
</html>