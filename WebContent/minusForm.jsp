<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>삭제폼</h2>
	<p>
	전화번호를 삭제하려면<br>
	   아래 항목을 기입하고 "삭제" 버튼을 클릭하세요.
	 </p>
	 	<form action= "./insert.jsp" method="get">
	 	고객아이디(id)  <input type="text" name="" value=""> <br>	//오라클 검색처럼 아이디로만 조회가능하게 할 수 있을까...?
	 	
		핸드폰(hp)		<input type="text" name="" value=""> <br>
		자택(home)	<input type="text" name="" value=""> <br>
		기타(ect)		<input type="text" name="" value=""> <br>
	<button type = "submit"> 삭제 </button>
	</form>
</body>
</html>