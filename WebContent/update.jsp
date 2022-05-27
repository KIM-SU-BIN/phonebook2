<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	//파라미터에서 id값 꺼내오기
	int id = Integer.parseInt(request.getParameter("id"));
	//int id = Integer.parseInt("21") -> 21이 위의 리퀘스트~ 문,String을 int로 변경해야 함
	//System.out.println("update");	->System.out.println("id");	
	
	//데이터 가져오기
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(id);
	System.out.println(personVo);
	
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
	<h2>수정폼</h2>
	
	<p> 전화번호를 수정하려면<br>
	   아래 항목을 기입하고 "수정" 버튼을 클릭하세요.</p>
	   
	<h3>전화번호</h3>
	
	<form action= "./insert.jsp" method="get">
		이름(name)	<input type="text" name="" value="<%=personVo.getName()%>"> <br>
		핸드폰(hp)		<input type="text" name="" value="<%=personVo.getHp()%> "> <br>
		회사(company)	<input type="text" name="" value="<%=personVo.getCompany()%> "> <br>
		pk(personId)<input type="text" name="" value="<%=personVo.getPersonId()%> "> <br>
	<button> 수정 </button>

	</form>
</body>
</html>