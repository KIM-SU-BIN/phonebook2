<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.dao.PhoneDao"%>

<%
	//파라미터에서 id값 꺼내오기
	int id = Integer.parseInt(request.getParameter("id"));
	//int id = Integer.parseInt("21") -> 21이 위의 리퀘스트~ 문,String을 int로 변경해야 함
	//System.out.println("id");	
	
	//데이터 삭제하기
	PhoneDao phoneDao = new PhoneDao();		//phoneDao는 내가 정한 이름!
	int count = phoneDao.personDelete(id);
	System.out.println(count);
	
	//응답 리다이렉트
	response.sendRedirect("./list.jsp");
%>




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
	 	고객아이디(id)  <input type="text" name="" value=""> <br>	
	 	
		핸드폰(hp)		<input type="text" name="" value=""> <br>
		자택(home)	<input type="text" name="" value=""> <br>
		기타(ect)		<input type="text" name="" value=""> <br>
	<button type = "submit"> 삭제 </button>
	</form>
</body>
</html>