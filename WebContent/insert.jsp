<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<%	//파라미타에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
		
	//PersonVo personVo = new PersonVo(name, hp, company);
	
	//personVo 메모리에 올린다.
	//생성자에 name hp company
	//Dao.insert(phoneVo)
	
	//Person 객체 만들기
   	PersonVo personVo = new PersonVo(name, hp, company);

	
	//phoneDao 객체 만들기
    PhoneDao phoneDao = new PhoneDao();
	
	//phoneDao의 persinInsert()를 이용해서 저장하기
	int count = phoneDao.personInsert(personVo);
	System.out.println(count);
	
	///////////////////////////////////////////////////////
	//리스트 가져와서 html에 넣는다. - 리스트 가져와서 뿌리기
	
	List<PersonVo> personList =  phoneDao.getPersonList();
	System.out.println(personList);
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	sendReadirect("./list.jsp")
	

</body>
</html>