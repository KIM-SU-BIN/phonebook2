<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	//파라미터 꺼내기
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//PersonVo만들기
	PersonVo personVo = new PersonVo(id, name, hp, company);
	System.out.println(personVo);
	
	//PersonDao
	PhoneDao phoneDao = new PhoneDao();
	int count = phoneDao.personUpdate(personVo);
	System.out.println(count);
	
	
	//리스트로 리다이렉트
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